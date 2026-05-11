#import "../version.typ": *

#show: приложение.with(буква: "А", содержание: [ Исходный текст программы ])

#let files = (
  "Makefile",
  "include/buffer.h",
  "include/debug_sam.h",
  "include/help.h",
  "include/memmanagment.h",
  "include/player.h",
  "include/reciter.h",
  "include/ReciterTabs.h",
  "include/RenderTabs.h",
  "include/sam.h",
  "include/SamTabs.h",
  "include/translator.h",
  "include/uart.h",
  "include/xmem.h",
  "src/buffer.c",
  "src/main.c",
  "src/translator.c",
  "src/debug_sam.c",
  "src/memmanagment.c",
  "src/player.c",
  "src/reciter.c",
  "src/ReciterTabs.c",
  "src/render.c",
  "src/RenderTabs.c",
  "src/sam.c",
  "src/SamTabs.c",
  "src/uart.c",
)

#for file in files {
  листинг(raw(read("../handheld-sam/" + file)))[ Содержимое файла #file ] 
}

