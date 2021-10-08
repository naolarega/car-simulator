extends Node

enum Error {
	NO_MESSAGE,
	SAVED,
	NOT_SAVED
}

func save_log(message: String) -> int:
	if message != "":
		return Error.NO_MESSAGE
	else:
		var file_saver = File.new()
		file_saver.open("", _File.WRITE)
		file_saver.store_string(message)
		file_saver.close()
		if file_saver.get_error() != OK:
			return Error.NOT_SAVED
		else:
			return Error.SAVED
