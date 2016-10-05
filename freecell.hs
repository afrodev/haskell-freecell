-- Funcao que inicia o jogo
-- Ela inicializa o jogo e comeca o loop do jogo
main = loopgame 2;
	
loopgame :: Int -> IO()
loopgame (-1) = do {
	putStrLn("OPCAO INVÁLIDA, DIGITE NOVAMENTE");
	loopgame 2;
}
loopgame 1 = do{
	putStrLn("JOGO TERMINOU!");
	return () -- Se o jogo acabou 
}
loopgame 2 = do {
	-- Colocando opcoes para o usuário 
	putStrLn("DIGITE 1 PARA TERMINAR");
	putStrLn("DIGITE 2 PARA JOGAR");
	
	-- Pega a opcao do usuario
	opcao <- readLn :: IO Int;
	
	if (opcao == 1 || opcao == 2) then
		loopgame opcao;
	else loopgame (-1);
		
	
	
	
}

{-
	- Preciso chamar uma funcao para pedir opcoes para o usuario
	- Opcao 1 jogar (mover)
	- Opcao 2 terminar
	
-}


