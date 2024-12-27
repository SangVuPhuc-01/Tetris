using System.IO;

namespace Tetris
{
    public class GameState
    {
        private Block currentBlock;

        public Block CurrentBlock
        {
            get => currentBlock;
            private set
            {
                currentBlock = value;
                currentBlock.Reset();

                for (int i = 0; i < 2; i++)
                {
                    currentBlock.Move(1, 0);

                    if (!BlockFits())
                    {
                        currentBlock.Move(-1, 0);
                    }
                }
            }
        }

        public GameGrid GameGrid { get; }
        public BlockQueue BlockQueue { get; }
        public bool GameOver { get; private set; }
        public int Score { get; private set; }
        public int MaxScore;
        public Block HeldBlock { get; private set; }
        public bool CanHold { get; private set; }
        public bool Stop;

        public GameState()
        {
            GameGrid = new GameGrid(22, 10);
            BlockQueue = new BlockQueue();
            CurrentBlock = BlockQueue.GetAnUpdate();
            CanHold = true;
            SetMaxScore();
        }

        private void SetMaxScore()
        {
            using (StreamReader sr = new StreamReader("mscore.txt"))
            {
                MaxScore = int.Parse(sr.ReadLine());
            }
        }

        private bool BlockFits()
        {
            foreach (Position p in CurrentBlock.TilePosition())
            {
                if (!GameGrid.IsEmpty(p.Row, p.Column))
                {
                    return false;
                }
            }
            return true;
        }

        public void HoldBlock()
        {
            if (!CanHold)
            {
                return;
            }

            if (HeldBlock == null)
            {
                HeldBlock = CurrentBlock;
                CurrentBlock = BlockQueue.GetAnUpdate();
            }
            else
            {
                Block tmp = CurrentBlock;
                CurrentBlock = HeldBlock;
                HeldBlock = tmp;
            }

            CanHold = false;
        }

        public void RotateBLockCW()
        {
            if (!Stop)
            {
                CurrentBlock.RotateCW();
            }

            if (!BlockFits())
            {
                CurrentBlock.RotateCW();
            }
        }

        public void RotateBLockCCW()
        {
            if (!Stop)
            {
                CurrentBlock.RotateCCW();
            }
            
            if (!BlockFits())
            {
                CurrentBlock.RotateCW();
            }
        }

        public void MoveBlockLeft()
        {
            if (!Stop)
            {
                CurrentBlock.Move(0, -1);
            }

            if (!BlockFits())
            {
                CurrentBlock.Move(0, 1);
            }
        }

        public void MoveBockRight()
        {
            if (!Stop)
            {
                CurrentBlock.Move(0, 1);
            }
            
            if (!BlockFits())
            {
                CurrentBlock.Move(0, -1);
            }
        }

        private bool IsGameOver()
        {
            return !(GameGrid.IsRowEmpty(0) && GameGrid.IsRowEmpty(1));
        }

        private void PlaceBlock()
        {
            foreach(Position p in CurrentBlock.TilePosition())
            {
                GameGrid[p.Row, p.Column] = CurrentBlock.Id;
            }

            Score += GameGrid.ClearFullRow();

            if (IsGameOver())
            {
                GameOver = true;
                if (Score > MaxScore) {
                    using (StreamWriter sw = new StreamWriter("mscore.txt"))
                    {
                        sw.WriteLine(Score);
                    }
                }
            }
            else
            {
                CurrentBlock = BlockQueue.GetAnUpdate();
            }
            CanHold = true;
        }

        public void MoveBlockDown()
        {
            if (!Stop)
            {
                CurrentBlock.Move(1, 0);
            }
            
            if (!BlockFits())
            {
                CurrentBlock.Move(-1, 0);
                PlaceBlock();
            }
        }

        private int TileDropDistane(Position p)
        {
            int drop = 0;

            while (GameGrid.IsEmpty(p.Row + drop + 1, p.Column))
            {
                drop++;
            }

            return drop;
        }

        public int BlockDropDistane()
        {
            int drop = GameGrid.Rows;

            foreach (Position p in CurrentBlock.TilePosition())
            {
                drop = System.Math.Min(drop, TileDropDistane(p));
            }

            return drop;
        }

        public void DropBlock()
        {
            if (!Stop)
            {
                currentBlock.Move(BlockDropDistane(), 0);
                PlaceBlock();
            }            
        }
    }
}
