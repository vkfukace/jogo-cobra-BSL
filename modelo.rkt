;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname modelo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;; Este jogo ...
;; TODO: adicionar descrição do jogo

;; =================
;; Constantes
;; TODO: definir constantes


;; =================
;; Definições de dados

;; EstadoJogo é ...
;; TODO: definir EstadoJogo e escolher outro nome (se for o caso)


;; =================
;; Funções

;; EstadoJogo -> EstadoJogo
;; Inicie o jogo com ...
;; TODO: descrever como iniciar o jogo
;; TODO: decidir as opções para big-bang
;; 
(define (main jogo)
  (big-bang jogo            ; EstadoJogo
    [name      "Jogo legal"]; O título da Janela
    [to-draw   desenha]     ; EstadoJogo -> Imagem
    [on-tick   avanca]      ; EstadoJogo -> EstadoJogo
    [on-key    trata-tecla] ; EstadoJogo KeyEvent -> EstadoJogo
    [on-mouse  trata-mouse] ; EstadoJogo Inteiro Inteiro MouseEvent -> EstadoJogo
    [stop-when ...]))       ; EstadoJogo -> Booleano

;; EstadoJogo -> Imagem
;; Produz a imagem ...
;; TODO: implementar
(define (desenha jogo) ...)

;; EstadoJogo -> EstadoJogo
;; Produz o próximo ...
;; TODO: implementar
(define (avanca jogo) ...)

;; EstadoJogo KeyEvent -> EstadoJogo
;; Trata os eventos de teclado ...
;; TODO: implementar
(define (trata-tecla jogo ke)
  (cond [(key=? ke "a") (... jogo)]
        [else (... jogo)]))

;; EstadoJogo Inteiro Inteiro MouseEvent -> EstadoJogo
;; Trata os eventos de mouse ...
;; TODO: implementar
(define (trata-mouse jogo x y me)
  (cond [(mouse=? me "button-down") (... jogo x y)]
        [else (... jogo x y)]))