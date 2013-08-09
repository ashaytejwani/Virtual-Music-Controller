/*
 Author: Ashay Tejwani
 contact: ashaytejwani@gmail.com
 
 Concept: Inspired by Novation Launchpad, aiming to create a simpler version using the keyboard
 Developed during HackU 2013, IIT Bombay.
 */

import ddf.minim.*;

Minim minim;

AudioSample Synth;
AudioSample bass;
AudioSample hat;
AudioSample fx;
AudioSample fx2;
AudioSample perc;
AudioSample dloop;
AudioSample gangnam;
AudioSample beats;
AudioSample daft;
AudioSample hardwell;
AudioSample getdown;
AudioSample jagger;

void setup() {
  size(1200, 600);
  background(0);
  noLoop();

  minim=new Minim(this);
  Synth=minim.loadSample("Synth.mp3");
  bass=minim.loadSample("Bass.mp3");
  beats=minim.loadSample("DemoBeats1.mp3");
  fx=minim.loadSample("DemoFx1.mp3");
  fx2=minim.loadSample("FX2.wav");
  hat=minim.loadSample("guitar1.mp3");
  perc=minim.loadSample("guitar2.mp3");
  dloop=minim.loadSample("dloop.wav");
  gangnam=minim.loadSample("gangnam.mp3");
  daft=minim.loadSample("NeverOver.mp3");
  hardwell = minim.loadSample("Hardwell.mp3");
  getdown = minim.loadSample("GetDown.mp3");
  jagger=minim.loadSample("jagger.mp3");
}

void draw() {
}

void keyPressed()
{
  if ( key == 'q' ) Synth.trigger();
  if ( key == 'w' ) bass.trigger();
  if ( key == 'z' ) beats.trigger();
  if ( key == 'x' ) fx.trigger();
  if ( key == 'r' ) fx2.trigger();
  if ( key == 't' ) hat.trigger();
  if ( key == 'y' ) perc.trigger();
  if ( key == 'u' ) dloop.trigger();
  if ( key == 'i' ) gangnam.trigger();
  if ( key == 'c' ) daft.trigger();
  if ( key == 'v' ) hardwell.trigger();
  if ( key == 'b' ) getdown.trigger();
  if ( key == 'n' ) jagger.trigger();
}


void stop()
{
  // always close Minim audio classes when you are done with them
  Synth.close();
  bass.close();
  fx.close();
  fx2.close();
  hat.close();
  perc.close();
  gangnam.close();
  beats.close();
  daft.close();
  getdown.close();
  hardwell.close();
  jagger.close();
  
  minim.stop();
  super.stop();
}
