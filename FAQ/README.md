# FAQ

## How to fix the problem that you cant install -ffmpeg- in linux?


I want to install ffmpeg and get this error

Do you want to continue? [Y/n] y
Err:1 http://ir.archive.ubuntu.com/ubuntu noble/universe amd64 librav1e0 amd64 0.7.1-2
  403  Forbidden [IP: 157.90.55.104 80]
Unable to correct missing packages.
E: Failed to fetch http://ir.archive.ubuntu.com/ubuntu/pool/universe/r/rust-rav1e/librav1e0_0.7.1-2_amd64.deb  403  Forbidden [IP: 157.90.55.104 80]
E: Aborting install.

No problem! You can manually add the repository mirror to your `sources.list` file. Here’s how you can do it:

1. **Open the `sources.list` file** in a text editor with root privileges. You can use `nano` or any other text editor you prefer. For example:
   ```sh
   sudo nano /etc/apt/sources.list
   ```

2. **Add the new repository mirror** to the file. Scroll to the bottom of the file and add the following line:
   ```sh
   deb http://archive.ubuntu.com/ubuntu noble main restricted universe multiverse
   ```

3. **Save and close the file**. If you are using `nano`, you can do this by pressing `CTRL + X`, then `Y` to confirm, and `Enter` to save.

4. **Update your package lists** to include the new repository:
   ```sh
   sudo apt update
   ```

5. **Try installing FFmpeg again**:
   ```sh
   sudo apt install ffmpeg
   ```
