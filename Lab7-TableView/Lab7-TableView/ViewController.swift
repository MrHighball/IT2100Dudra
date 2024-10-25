import UIKit
import AVFoundation

// Define the Song model
struct Song {
    let title: String
    let artist: String
    let albumArt: String // Album artwork image name
    let previewURL: URL // Audio preview URL
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AVAudioPlayerDelegate {

    // Outlets for UI components
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var albumArtImageView: UIImageView!
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!

    // Data and audio player
    var songs: [Song] = [
        Song(title: "Lift Me From The Ground", artist: "San Holo", albumArt: "lift", previewURL: URL(string: "https://sampleurl.com/preview1.mp3")!),
        Song(title: "Light", artist: "San Holo", albumArt: "light", previewURL: URL(string: "https://sampleurl.com/preview2.mp3")!),
        Song(title: "We Rise", artist: "San Holo", albumArt: "rise", previewURL: URL(string: "https://sampleurl.com/preview3.mp3")!)
    ]
    var audioPlayer: AVAudioPlayer?
    var currentSongIndex: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: - UITableViewDataSource Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath)
        cell.textLabel?.text = songs[indexPath.row].title
        return cell
    }

    // MARK: - UITableViewDelegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedSong = songs[indexPath.row]
        playSong(at: indexPath.row)
        updateUI(with: selectedSong)
    }

    // MARK: - Audio Playback

    func playSong(at index: Int) {
        let song = songs[index]
        let url = song.previewURL

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.delegate = self
            audioPlayer?.play()
            currentSongIndex = index
            playPauseButton.setTitle("Pause", for: .normal)
        } catch {
            print("Error loading audio file: \(error)")
        }
    }

    func updateUI(with song: Song) {
        songTitleLabel.text = song.title
        albumArtImageView.image = UIImage(named: song.albumArt)
    }

    // MARK: - Play/Pause Button Action

    @IBAction func playPauseTapped(_ sender: UIButton) {
        if let player = audioPlayer, player.isPlaying {
            player.pause()
            playPauseButton.setTitle("Play", for: .normal)
        } else if let player = audioPlayer {
            player.play()
            playPauseButton.setTitle("Pause", for: .normal)
        } else if let index = currentSongIndex {
            playSong(at: index)
        }
    }

    // MARK: - AVAudioPlayerDelegate Methods

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        playPauseButton.setTitle("Play", for: .normal)
    }
}
