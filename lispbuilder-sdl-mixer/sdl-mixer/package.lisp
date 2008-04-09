;;; -*- lisp -*-

(in-package #:cl-user)

(defpackage #:lispbuilder-sdl-mixer
  (:use #:cl #:cffi)
  (:nicknames #:sdl-mixer)
  (:documentation "The main package of `lispbuilder-sdl-mixer'.")
  (:import-from #:lispbuilder-sdl-mixer-cffi

		 lispbuilder-sdl-cffi::+SDL-MIXER-MAJOR-VERSION+
		 lispbuilder-sdl-cffi::+SDL-MIXER-MINOR-VERSION+
		 lispbuilder-sdl-cffi::+SDL-MIXER-PATCH-LEVEL+
		 lispbuilder-sdl-cffi::+MIX-MAJOR-VERSION+
		 lispbuilder-sdl-cffi::+MIX-MINOR-VERSION+
		 lispbuilder-sdl-cffi::+MIX-PATCH-LEVEL+
		 lispbuilder-sdl-cffi::Mix-Linked-Version
		 lispbuilder-sdl-cffi::+MIX-CHANNELS+
		 lispbuilder-sdl-cffi::+MIX-DEFAULT-FREQUENCY+
		 lispbuilder-sdl-cffi::+MIX-DEFAULT-CHANNELS+
		 lispbuilder-sdl-cffi::+MIX-MAX-VOLUME+
		 lispbuilder-sdl-cffi::Mix-Chunk
		 lispbuilder-sdl-cffi::allocated
		 lispbuilder-sdl-cffi::abuf
		 lispbuilder-sdl-cffi::alen
		 lispbuilder-sdl-cffi::volume
		 lispbuilder-sdl-cffi::Mix-Fading
		 lispbuilder-sdl-cffi::Mix-Music-Type
		 lispbuilder-sdl-cffi::Mix-Open-Audio
		 lispbuilder-sdl-cffi::Mix-Allocate-Channels
		 lispbuilder-sdl-cffi::Mix-Query-Spec
		 lispbuilder-sdl-cffi::Mix-Load-WAV-RW
		 lispbuilder-sdl-cffi::Mix-Load-MUS
		 lispbuilder-sdl-cffi::Mix-Load-MUS-RW
		 lispbuilder-sdl-cffi::Mix-Quick-Load-WAV
		 lispbuilder-sdl-cffi::Mix-Quick-Load-RAW
		 lispbuilder-sdl-cffi::Mix-Free-Chunk
		 lispbuilder-sdl-cffi::Mix-Free-Music
		 lispbuilder-sdl-cffi::Mix-Get-Music-Type
		 lispbuilder-sdl-cffi::Mix-Set-Post-Mix
		 lispbuilder-sdl-cffi::Mix-Hook-Music
		 lispbuilder-sdl-cffi::Mix-Hook-Music-Finished
		 lispbuilder-sdl-cffi::Mix-Get-Music-Hook-Data
		 lispbuilder-sdl-cffi::Mix-Channel-Finished
		 lispbuilder-sdl-cffi::+MIX-CHANNEL-POST+
		 lispbuilder-sdl-cffi::Mix-Register-Effect
		 lispbuilder-sdl-cffi::Mix-Unregister-Effect
		 lispbuilder-sdl-cffi::Mix-Unregister-All-Effects
		 lispbuilder-sdl-cffi::Mix-Set-Panning
		 lispbuilder-sdl-cffi::Mix-Set-Position
		 lispbuilder-sdl-cffi::Mix-Set-Distance
		 lispbuilder-sdl-cffi::Mix-Set-Reverse-Stereo
		 lispbuilder-sdl-cffi::Mix-Reserve-Channels
		 lispbuilder-sdl-cffi::Mix-Group-Channel
		 lispbuilder-sdl-cffi::Mix-Group-Channels
		 lispbuilder-sdl-cffi::Mix-Group-Available
		 lispbuilder-sdl-cffi::Mix-Group-Count
		 lispbuilder-sdl-cffi::Mix-Group-Oldest
		 lispbuilder-sdl-cffi::Mix-Group-Newer
		 lispbuilder-sdl-cffi::Mix-Play-Channel-Timed
		 lispbuilder-sdl-cffi::Mix-Play-Music
		 lispbuilder-sdl-cffi::Mix-Fade-In-Music
		 lispbuilder-sdl-cffi::Mix-Fade-In-Music-Pos
		 lispbuilder-sdl-cffi::Mix-Fade-In-Channel-Timed
		 lispbuilder-sdl-cffi::Mix-Volume
		 lispbuilder-sdl-cffi::Mix-Volume-Chunk
		 lispbuilder-sdl-cffi::Mix-Volume-Music
		 lispbuilder-sdl-cffi::Mix-Halt-Channel
		 lispbuilder-sdl-cffi::Mix-Halt-Group
		 lispbuilder-sdl-cffi::Mix-Halt-Music
		 lispbuilder-sdl-cffi::Mix-Expire-Channel
		 lispbuilder-sdl-cffi::Mix-Fade-Out-Channel
		 lispbuilder-sdl-cffi::Mix-Fade-Out-Group
		 lispbuilder-sdl-cffi::Mix-Fade-Out-Music
		 lispbuilder-sdl-cffi::Mix-Fading-Music
		 lispbuilder-sdl-cffi::Mix-Fading-Channel
		 lispbuilder-sdl-cffi::Mix-Pause
		 lispbuilder-sdl-cffi::Mix-Resume
		 lispbuilder-sdl-cffi::Mix-Paused
		 lispbuilder-sdl-cffi::Mix-Pause-Music
		 lispbuilder-sdl-cffi::Mix-Resume-Music
		 lispbuilder-sdl-cffi::Mix-Rewind-Music
		 lispbuilder-sdl-cffi::Mix-Paused-Music
		 lispbuilder-sdl-cffi::Mix-Set-Music-Position
		 lispbuilder-sdl-cffi::Mix-Playing
		 lispbuilder-sdl-cffi::Mix-Playing-Music
		 lispbuilder-sdl-cffi::Mix-Set-Music-CMD
		 lispbuilder-sdl-cffi::Mix-Set-Synchro-Value
		 lispbuilder-sdl-cffi::Mix-Get-Synchro-Value
		 lispbuilder-sdl-cffi::Mix-Get-Chunk
		 lispbuilder-sdl-cffi::Mix-Close-Audio
   

		 lispbuilder-sdl-cffi::SDL-MIXER-VERSION
		 lispbuilder-sdl-cffi::MIX-VERSION
		 lispbuilder-sdl-cffi::+MIX-DEFAULTFORMAT+
		 lispbuilder-sdl-cffi::Mix-Load-WAV

		 lispbuilder-sdl-cffi::Mix-Play-Channel
		 lispbuilder-sdl-cffi::Mix-Fade-In-Channel
		 lispbuilder-sdl-cffi::Mix-Get-Error)

  (:export

   #:+SDL-MIXER-MAJOR-VERSION+
   #:+SDL-MIXER-MINOR-VERSION+
   #:+SDL-MIXER-PATCH-LEVEL+
   #:+MIX-MAJOR-VERSION+
   #:+MIX-MINOR-VERSION+
   #:+MIX-PATCH-LEVEL+
   #:Mix-Linked-Version
   #:+MIX-CHANNELS+
   #:+MIX-DEFAULT-FREQUENCY+
   #:+MIX-DEFAULT-CHANNELS+
   #:+MIX-MAX-VOLUME+
   #:Mix-Chunk
   #:allocated
   #:abuf
   #:alen
   #:volume
   #:Mix-Fading
   #:Mix-Music-Type
   #:Mix-Open-Audio
   #:Mix-Allocate-Channels
   #:Mix-Query-Spec
   #:Mix-Load-WAV-RW
   #:Mix-Load-MUS
   #:Mix-Load-MUS-RW
   #:Mix-Quick-Load-WAV
   #:Mix-Quick-Load-RAW
   #:Mix-Free-Chunk
   #:Mix-Free-Music
   #:Mix-Get-Music-Type
   #:Mix-Set-Post-Mix
   #:Mix-Hook-Music
   #:Mix-Hook-Music-Finished
   #:Mix-Get-Music-Hook-Data
   #:Mix-Channel-Finished
   #:+MIX-CHANNEL-POST+
   #:Mix-Register-Effect
   #:Mix-Unregister-Effect
   #:Mix-Unregister-All-Effects
   #:Mix-Set-Panning
   #:Mix-Set-Position
   #:Mix-Set-Distance
   #:Mix-Set-Reverse-Stereo
   #:Mix-Reserve-Channels
   #:Mix-Group-Channel
   #:Mix-Group-Channels
   #:Mix-Group-Available
   #:Mix-Group-Count
   #:Mix-Group-Oldest
   #:Mix-Group-Newer
   #:Mix-Play-Channel-Timed
   #:Mix-Play-Music
   #:Mix-Fade-In-Music
   #:Mix-Fade-In-Music-Pos
   #:Mix-Fade-In-Channel-Timed
   #:Mix-Volume
   #:Mix-Volume-Chunk
   #:Mix-Volume-Music
   #:Mix-Halt-Channel
   #:Mix-Halt-Group
   #:Mix-Halt-Music
   #:Mix-Expire-Channel
   #:Mix-Fade-Out-Channel
   #:Mix-Fade-Out-Group
   #:Mix-Fade-Out-Music
   #:Mix-Fading-Music
   #:Mix-Fading-Channel
   #:Mix-Pause
   #:Mix-Resume
   #:Mix-Paused
   #:Mix-Pause-Music
   #:Mix-Resume-Music
   #:Mix-Rewind-Music
   #:Mix-Paused-Music
   #:Mix-Set-Music-Position
   #:Mix-Playing
   #:Mix-Playing-Music
   #:Mix-Set-Music-CMD
   #:Mix-Set-Synchro-Value
   #:Mix-Get-Synchro-Value
   #:Mix-Get-Chunk
   #:Mix-Close-Audio
   

   #:SDL-MIXER-VERSION
   #:MIX-VERSION
   #:+MIX-DEFAULTFORMAT+
   #:Mix-Load-WAV
   #:Mix-Play-Channel
   #:Mix-Fade-In-Channel
   #:Mix-Get-Error))