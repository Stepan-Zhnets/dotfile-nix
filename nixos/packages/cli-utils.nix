# ~/nix/nixos/packages/cli-utils.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		git
		# nix-index

		# Fetch
		neofetch
		fastfetch

		# Othet
		zip
		unzip
		swww
		file
		tree
    # wget # пакет для извлечения файлов с использованием HTTP, HTTPS, FTP, FTPS
		# scrot # Утилита захвата экрана командной строки
		# ffmpeg # для записи, преобразования и потоковой передачи аудио и видеоо
		light # для управления подсветкой
		# lux # загрузчик видео
		# mediainfo # 
		# ranger # файловый менеджер сс минималистичным интерфейсом
		# zram-generator # генератор для устройств zram
		# ntfs3g # драйвер NTFS на базе FUSE с полной поддержкой записи
		# yt-dlp # инструмент командной строки для загрузки видео с youtube
		# brightnessctl # Программа управлением яркостью устройства
		# openssl # Криптографическая библиотрека, реализующая протоколы SSL и TLS
		# lazygit # интерфейс терминала для команд git
		cron

		# Bluetooth
		bluez
		bluez-tools

		# Top
		htop
		btop

		# Widgets
		yazi
		cava
	];
}
