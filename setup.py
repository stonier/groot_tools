

from setuptools import find_packages
from setuptools import setup
from groot_tools import __version__

# Setup installation dependencies, removing some so they
# can build on the ppa
install_requires = [
    'setuptools',
    'PyYAML',
]


setup(
    name='groot_tools',
    version=__version__,
    packages=find_packages(exclude=['tests*', 'docs*']),
    scripts=[
        'scripts/groot-cfind',
        'scripts/groot-docker-build',
        'scripts/groot-docker-enter',
    ],
    data_files=[],  # system files?
    install_requires=install_requires,
    author='Daniel Stonier',
    author_email='d.stonier@gmail.com',
    maintainer='Daniel Stonier',
    maintainer_email='d.stonier@gmail.com',
    url='http://github.com/stonier/groot_tools',
    keywords=['catkin'],
    classifiers=[
        'Environment :: Console',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Programming Language :: Python',
        'Topic :: System :: Systems Administration',
        'Topic :: Utilities'
    ],
    description="groot's swiss army knife",
    long_description="Various tools and utilities",
    license='BSD',
)
