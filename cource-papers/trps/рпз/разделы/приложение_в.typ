#import "@docs/gost732-2017:0.1.1": *
#import "@docs/bmstu:0.1.1": *

#show: приложение.with(буква: "В", содержание: [ ПРИЛОЖЕНИЕ В Фрагмент исходного текста программы ])

#align(center)[
  #strong[
    #upper[
      ФРАГМЕНТ ИСХОДНОГО ТЕКСТА ПРОГРАММЫ
    ]
  ]
  \ Листов 4
]

#страница(image("../материалы/фрагмент титул.jpg", height: 100%), номер: нет, содержимое: [#context counter(page).update(1)])

#h(1.25cm) Исходный код программы расположен в открытом репозитории: https://github.com/vzalygin/plc.

В листинге @фрагмент в качестве фрагмента исходного кода приведено содержимое компонента сборки.

#листинг(```
use anyhow::{anyhow, Result};
use std::{
    env,
    fs::File,
    io::Write,
    path::{Path, PathBuf},
    process::Command,
};

use crate::translator::Asm;

const TMP_SUBDIR: &str = "plc";

pub fn link_to_executable_file<'a>(
    object_files_paths: &'a [&Path],
    output_path: &'a Path,
) -> Result<&'a Path> {
    {
        let output_path = output_path
            .to_str()
            .ok_or(anyhow!("path contains non-utf8 characters"))?;

        let mut ld_command = Command::new("ld");
        let mut ld_command = ld_command
            .args(["-dynamic-linker", "/lib64/ld-linux-x86-64.so.2"])
            .args(["-o", output_path])
            .arg("-lc");

        for object_files_path in object_files_paths {
            ld_command = ld_command.arg(
                object_files_path
                    .to_str()
                    .ok_or(anyhow!("path contains non-utf8 characters"))?,
            )
        }

        let ld_exit_code: std::process::ExitStatus = ld_command.status()?;

        if !ld_exit_code.success() {
            let msg = match ld_exit_code.code() {
                Some(code) => format!("ld returned code {code}"),
                None => "ld was interrupted".to_string(),
            };

            return Err(anyhow!(msg));
        }
    }

    Ok(output_path)
}

pub fn make_object_file<'a>(asm_file_path: &'a Path, output_path: &'a Path) -> Result<&'a Path> {
    {
        let output_path = output_path
            .to_str()
            .ok_or(anyhow!("path contains non-utf8 characters"))?;
        let asm_file_path = asm_file_path
            .to_str()
            .ok_or(anyhow!("path contains non-utf8 characters"))?;

        let nasm_exit_status = Command::new("nasm")
            .args(["-f", "elf64"])
            .arg("-w-orphan-labels") // TODO: set only in release mode
            .args(["-o", output_path])
            .arg(asm_file_path)
            .status()?;

        if !nasm_exit_status.success() {
            let msg = match nasm_exit_status.code() {
                Some(code) => format!("nasm returned code {code}"),
                None => "nasm was interrupted".to_string(),
            };

            return Err(anyhow!(msg));
        }
    }

    Ok(output_path)
}

pub fn make_asm_file(asm: Asm, output: &Path) -> Result<&Path> {
    let code = asm.into_assembly();

    let mut file = File::create(output)?;

    let _ = file.write(code.as_bytes())?;

    Ok(output)
}

pub fn make_tmp_path() -> PathBuf {
    env::temp_dir()
        .join(TMP_SUBDIR)
        .join(uuid::Uuid::new_v4().to_string())
}

pub fn check_tmp_dir() -> Result<()> {
    std::fs::create_dir_all(
      env::temp_dir().join(TMP_SUBDIR)).map_err(|e| e.into()
    )
}
```)[ Фрагмент исходного текста программы ] <фрагмент>