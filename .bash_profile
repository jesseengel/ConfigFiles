#Command Prompt
#PS1="\e[0;32m[\W]\$ \e[m"
PS1='\[\033[1m\033[32m\][\w]\[\033[0m\]\$ '


#ALIASES
alias amacs='open -a Aquamacs'
alias sublimetext='open -a Sublime\ Text\ 2'
alias matlab='~/../../Applications/MATLAB_R2012b.app/bin/matlab -nodesktop -nosplash'
alias scsynth='~/../../Applications/SuperCollider/SuperCollider.app/Contents/Resources/scsynth'
alias sclang='~/../../Applications/SuperCollider/SuperCollider.app/Contents/Resources/sclang'


#Not Sure what this is for
MKL_NUM_THREADS=1
export MKL_NUM_THREADS


##Paths

## PYTHON
# Setting PATH for EPD-7.3-2
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"

## MATLAB
export PATH="/Applications/MATLAB_R2012b.app/bin:$PATH"


## MacPorts
# Your previous /Users/jengel/.bash_profile file was backed up as /Users/jengel/.bash_profile.macports-saved_2013-06-17_at_01:54:20
##

# MacPorts Installer addition on 2013-06-17_at_01:54:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


