# Cosmic Bazzite Images
This is mostly for my own use. Feel free to use them as well.

A collection of [Cosmic](https://github.com/pop-os/cosmic-epoch) desktop images built on top of the [Bazzite](https://github.com/ublue-os/bazzite) Nvidia images. These images combine the hardware support and gaming optimizations of Bazzite with the Cosmic desktop environment.

## Standard variants
<details>
<summary>

- **bazzite-based-cosmic-nvidia**: Bazzite-based Cosmic image with KDE desktop and NVIDIA's proprietary drivers
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-nvidia:latest
```

</details>

<details>
<summary>

- **bazzite-based-cosmic-nvidia-open**: Bazzite-based Cosmic image with KDE desktop and NVIDIA's partially open-source drivers
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-nvidia-open:latest
```

</details>

<details>
<summary>

- **bazzite-based-cosmic-gnome-nvidia**: Bazzite-based Cosmic image with GNOME desktop and NVIDIA's partially open-source drivers
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-gnome-nvidia:latest
```

</details>

<details>
<summary>


- **bazzite-based-cosmic-gnome-nvidia-open**: Bazzite-based Cosmic image with GNOME desktop and NVIDIA's partially open-source drivers
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-gnome-nvidia-open:latest
```

</details>


## Developer variants
<details>
<summary>

- **bazzite-based-cosmic-dx-nvidia-open**: Bazzite-based Cosmic image with KDE desktop and NVIDIA's partially open-source drivers **with developer tools**
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-dx-nvidia-open:latest
```

</details>

<details>
<summary>


- **bazzite-based-cosmic-dx-gnome-nvidia-open**: Bazzite-based Cosmic image with GNOME desktop and NVIDIA's partially open-source drivers **with developer tools**
</summary>

```bash
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/r-dson/bazzite-based-cosmic-dx-gnome-nvidia-open:latest
```

</details>

You may need to use `rpm-ostree rebase ostree-unverified-registry:docker...` instead.

## What's Included
These images include:

- Cosmic desktop environment
- Base Bazzite features (gaming optimizations, hardware support)
- NVIDIA driver support (either proprietary or partially open-source)
- Cosmic built with KDE or GNOME
