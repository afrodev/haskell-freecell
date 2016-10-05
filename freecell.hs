{-
main = do {
	inp <- getLine;
	printOften (length inp) inp;
}

printOften :: Int -> String -> IO()
printOften 0 str = putStrLn str
printOften n str = do {
	putStrLn str;
	printOften (n - 1) str;
}

-}
ntimes :: Int -> IO() -> IO()
ntimes 1 a = return ()
ntimes n a = do {
	a;
	ntimes(n+1) a;
}

mainPrincipal = ntimes 100 act
	where act = do {
		inp <- getLine;
		putStrLn inp;
	}