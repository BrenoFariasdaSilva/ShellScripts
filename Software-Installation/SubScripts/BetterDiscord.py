import os # Import the os module to create the destination directories
import requests # Import the requests module to download the files

print("Running BetterDiscord.py")

# Define the destination directories
theme_destination_dir = os.path.expanduser("~/.config/BetterDiscord/themes")
plugin_destination_dir = os.path.expanduser("~/.config/BetterDiscord/plugins")

# Define the dictionary of theme URLs and corresponding filenames
theme_files = {
	"https://betterdiscord.app/Download?id=507": "midnight.theme",
}

# Define the dictionary of plugin URLs and corresponding filenames
plugin_files = {
	"https://betterdiscord.app/Download?id=100": "ServerDetails.plugin",
	"https://betterdiscord.app/Download?id=104": "SpellCheck.plugin",
	"https://betterdiscord.app/Download?id=106": "OpenSteamLinksInApp.plugin",
	"https://betterdiscord.app/Download?id=120": "GameActivityToggle.plugin",
	"https://betterdiscord.app/Download?id=131": "NoSpotifyPause.plugin",
	"https://betterdiscord.app/Download?id=138": "WhoReacted.plugin",
	"https://betterdiscord.app/Download?id=159": "ShowAllActivities.plugin",
	"https://betterdiscord.app/Download?id=183": "OnlineFriendsCounter.plugin",
	"https://betterdiscord.app/Download?id=184": "BetterVolume.plugin",
	"https://betterdiscord.app/Download?id=188": "HideDisabledEmojis.plugin",
	"https://betterdiscord.app/Download?id=2": "BetterRoleColors.plugin",
	"https://betterdiscord.app/Download?id=200": "PluginRepo.plugin",
	"https://betterdiscord.app/Download?id=201": "ThemeRepo.plugin",
	"https://betterdiscord.app/Download?id=245": "DiscordFreeEmojis64px.plugin",
	"https://betterdiscord.app/Download?id=291": "ShowConnections.plugin",
	"https://betterdiscord.app/Download?id=295": "InvisibleTyping.plugin",
	"https://betterdiscord.app/Download?id=350": "SpotifyListenAlong.plugin",
	"https://betterdiscord.app/Download?id=354": "DoubleClickToEdit.plugin",
	"https://betterdiscord.app/Download?id=377": "BetterMediaPlayer.plugin",
	"https://betterdiscord.app/Download?id=479": "FileViewer.plugin",
	"https://betterdiscord.app/Download?id=60": "ShowBadgesInChat.plugin",
	"https://betterdiscord.app/Download?id=64": "CharCounter.plugin",
	"https://betterdiscord.app/Download?id=762": "BetterAudioPlayer.plugin",
	"https://betterdiscord.app/Download?id=81": "Translator.plugin",
	"https://betterdiscord.app/Download?id=83": "ImageUtilities.plugin",
	"https://betterdiscord.app/Download?id=85": "LastMessageDate.plugin",
	"https://betterdiscord.app/Download?id=9": "ZeroPluginLibrary.plugin",
	"https://betterdiscord.app/Download?id=94": "ReadAllNotificationsButton.plugin",
	"https://betterdiscord.app/Download?id=99": "ServerCounter.plugin",
	"https://betterdiscord.app/Download?id=228": "CallTimeCounter.plugin",
}

# Create the destination directories if they don't exist
os.makedirs(theme_destination_dir, exist_ok=True)
os.makedirs(plugin_destination_dir, exist_ok=True)

# Function to download and move files
def download_and_move_files(files_dict, destination_dir):
	for url, file_name in files_dict.items():
		response = requests.get(url)
		if response.status_code == 200:
			file_path = os.path.join(destination_dir, file_name)
			with open(file_path, "wb") as file:
				file.write(response.content)
		else:
			print(f"{response.status_code}: Failed to download {file_name} from {url}.")

# Main function to execute the script
def main():
	# Print a message to indicate that the script has started
	print("Downloading and moving BetterDiscord Plugins and Themes...")

	# Download and move theme files
	download_and_move_files(theme_files, theme_destination_dir)
	
	# Download and move plugin files
	download_and_move_files(plugin_files, plugin_destination_dir)

	# Print a message to indicate that the script has completed
	print("The BetterDiscord Plugins and Themes have been downloaded and moved successfully!")

	# Print a message to indicate that the script has finished running
	print("Finished running BetterDiscord.py")

# This is the standard boilerplate that calls the main() function.
if __name__ == "__main__":
	main() # Call the main function
