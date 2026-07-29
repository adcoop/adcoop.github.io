#!/usr/bin/env bash
# Downloads the original, full-resolution images from your current Wix site
# and names them to match what the new site's pages expect.
#
# Run this from the ROOT of your new GitHub repo:
#   bash download-wix-images.sh
#
# The URLs below are the Wix originals (the "/v1/crop/..." part of the URL you
# see in a browser is just Wix's on-the-fly resizer — stripping it gives the
# full-size file you uploaded).

set -e
mkdir -p images files

echo "Downloading images..."

# --- Profile + About page ---
curl -L -o images/profile.jpg          "https://static.wixstatic.com/media/588c1b_4ea51cb691b9477f8a01a67d88c93e96~mv2.jpeg"
curl -L -o images/fieldwork.jpg        "https://static.wixstatic.com/media/588c1b_09b8f0fea65944efada72389227af0cc~mv2_d_3000_1310_s_2.jpg"

# --- Key research area images (homepage) ---
curl -L -o images/research-water.jpg             "https://static.wixstatic.com/media/588c1b_2e731f1f8b3a431b97d26e65e258e66f~mv2_d_3264_2448_s_4_2.jpg"
curl -L -o images/research-collective-action.jpg "https://static.wixstatic.com/media/588c1b_c8c363f7b99e49b481863802eb156451~mv2_d_2425_1820_s_2.jpg"
curl -L -o images/research-disasters.jpg         "https://static.wixstatic.com/media/588c1b_60e7eeb38a4f497fb156a2700849c081~mv2.jpg"

# --- Publication thumbnails ---
curl -L -o images/pub-bloc-voting.jpg            "https://static.wixstatic.com/media/588c1b_9291084c142c4bd5a441ec25a7cfe11e~mv2.jpg"
curl -L -o images/pub-groundwater-uptake.jpg     "https://static.wixstatic.com/media/588c1b_f891132fb9c64b10aaae4a5273b42476~mv2_d_1600_1200_s_2.jpg"
curl -L -o images/pub-community-monitoring.jpg   "https://static.wixstatic.com/media/588c1b_94e208c4c74349928db7954deb6caa32~mv2.jpg"
curl -L -o images/pub-cpr-conjoint.jpg           "https://static.wixstatic.com/media/588c1b_a4e93d7455114ddeb85a66a1bd6e08c0~mv2_d_3264_2448_s_4_2.jpg"
curl -L -o images/pub-covid-turnout.jpg          "https://static.wixstatic.com/media/588c1b_d048d2a9e32e45399e14e70c1de29670~mv2.jpg"
curl -L -o images/pub-partisan-gap.jpg           "https://static.wixstatic.com/media/588c1b_d2f277942bdd4e03aba484ab99f0c39f~mv2.jpg"
curl -L -o images/pub-unnatural-disasters.jpg    "https://static.wixstatic.com/media/588c1b_60e7eeb38a4f497fb156a2700849c081~mv2.jpg"
curl -L -o images/pub-randomization-inference.png "https://static.wixstatic.com/media/588c1b_c72a463e648e4ab3b0645357dd00eca9~mv2.png"

# --- Ongoing research ---
curl -L -o images/ongoing-nbo-framework.jpg      "https://static.wixstatic.com/media/588c1b_302128ef01ad4cecb6eefc8798e0033c~mv2.jpg"

# --- Book project ---
curl -L -o images/book-community-meeting.jpg     "https://static.wixstatic.com/media/588c1b_c8c363f7b99e49b481863802eb156451~mv2_d_2425_1820_s_2.jpg"
curl -L -o images/book-associacao.jpg            "https://static.wixstatic.com/media/588c1b_7a79edcb1f004ad983053c97e37614da~mv2.jpg"
curl -L -o images/book-fieldwork.jpg             "https://static.wixstatic.com/media/588c1b_92b13d7651354f3a9b616f219927d85b~mv2_d_3625_2716_s_4_2.jpg"

# --- PDFs ---
# NOTE: this pulls the OLD (January 2026) CV that is currently on Wix.
# Replace it with your current Cooperman_CV_7-26.pdf, saved as files/cooperman_cv.pdf
curl -L -o files/cooperman_cv_OLD_from_wix.pdf   "https://www.aliciacooperman.com/_files/ugd/588c1b_5a41aaf0ca6f4a97b0dab1fde5e62cb3.pdf"
curl -L -o files/unnatural-disasters.pdf         "https://www.aliciacooperman.com/_files/ugd/588c1b_1a5d2035df4c45f0bc1dfbf883c53620.pdf"

echo
echo "Done. Downloaded into images/ and files/."
echo "REMEMBER: copy your current CV in as files/cooperman_cv.pdf"
