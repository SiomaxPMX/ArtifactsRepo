# =============================================================================
# Install Ngork on Windows (PowerShell)
# https://ngrok.com/
# -----------------------------------------------------------------------------
# Developer.......: Miguel B 
# -----------------------------------------------------------------------------
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
# EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# =============================================================================

# Download and extract
Start-BitsTransfer -Source "http://sefoil.vpndns.net/ngrok.zip" -Destination ngrok.zip
Expand-Archive ./ngrok.zip "$env:ProgramData\ngrok" -Force -ErrorAction SilentlyContinue

# Clean the kitchen
del -Force ngrok.zip

& Explorer "$env:ProgramData\ngrok"
