


module cameraBody() {
	union() {
		cylinder(r=22.04, h=25.35, $fn=80, center=true);
		cube([31.47, 19.85, 48.35], center=true);
	}
}//end of cameraBody()





module lens() {
	rotate([90, 0, 0]) {
		translate([0, 0, 14.04]) {
			cylinder(r=9, h=15, $fn=80);
		}
	}
}//end of lens()





module cameraBallMount() {
	scale(1.03){
	hull() {
		translate([-25, -2.505, 0]) {
			rotate([0, 270, 0]) {
				translate([0, 0, -10]) {
					//cylinder(r=2.575, h=20, $fn=50);
					cylinder(r=5.04, h=18, $fn=50);
				}
				translate([0, 0, 6.96]) {
					sphere(r=5.04, $fn=50);
				}
			}
		}
	}
}
}//end of cameraBallMount()





module cameraCord() {
	translate([-5, 18.3, 0]) {
		rotate([0, 270, 0]) {
			cylinder(r=1.775, h=25, $fn=50);
		}
	}
}//end of cameraCord()





module webcam() {
	scale(1.02) {
		rotate([0, 270, 0]) {
			union() {
				cameraBody();
				lens();
				hull() {
					cameraBallMount();
					translate([0,-10,0]) {
						cameraBallMount();
					}
				}
				cameraCord();
			}
		}
	}
}//end of webcam()





module cameraMountScrewTabs() {
	rotate([90, 0, 0]) {
		difference() {
			cube([13, 13, 3.175], center=true);
			cylinder(r=3.175, h=4, center=true);
		}
	}
}//end of cameraMountScrewTabs()





module cameraMountBottomHalf() {
	union() {
		difference() {
			difference() {
				translate([0, -12.5, -5]) {
					cube([76.2, 22, 76.2], center=true);
				}
				webcam();
			}

			translate([31.9, -12.35, 26.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 25], center=true);
				}	
			}
			translate([-31.9, -12.35, 26.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 25], center=true);
				}	
			}
			translate([31.9, -12.35, -36.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 25], center=true);
				}	
			}
			translate([-31.9, -12.35, -36.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 25], center=true);
				}	
			}
		}



		translate([31.6, -3.055, 26.6]) {
			cameraMountScrewTabs();
		}
		translate([-31.6, -3.055, 26.6]) {
			cameraMountScrewTabs();
		}
		translate([31.6, -3.055, -36.6]) {
			cameraMountScrewTabs();
		}
		translate([-31.6, -3.055, -36.6]) {
			cameraMountScrewTabs();
		}



		union() {
			translate([0, 0, -5]) {
				translate([46.95, -3.1, 0]) {
					cameraMountScrewTabs();
					rotate([90, 0, 0]) {
						translate([-13, 0, 0]) {
							cube([17, 15.875, 3.175], center=true);
						}
					}
				}
			}
		}	


		union() {
			translate([0, 0, -5]) {
				translate([-46.95, -3.1, 0]) {
					cameraMountScrewTabs();
					rotate([90, 0, 0]) {
						translate([13, 0, 0]) {
							cube([17, 15.875, 3.175], center=true);
						}
					}
				}
			}
		}	
	}
}//end of cameraMountBottomHalf()







module cameraMountTopHalf() {
	union() {
difference() {
		difference() {
			translate([0, 12.5, -5]) {
				cube([76.2, 28, 76.2], center=true);
			}
			webcam();
			translate([0, 7, -5]) {
				cube([26.5, 40, 66], center=true);
			rotate([0,90,0]){
				translate([0, -10, 0]) {
					cube([43.47, 28.85, 48.35], center=true);
				}
			}
			}
		}






			translate([31.9, 12.65, 26.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 35], center=true);
				}	
			}
			translate([-31.9, 12.65, 26.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 35], center=true);
				}	
			}
			translate([31.9, 12.65, -36.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 35], center=true);
				}	
			}
			translate([-31.9, 12.65, -36.75]) {
				rotate([90, 0, 0]) {
					cube([13, 13, 35], center=true);
				}	
			}
		}

}

		translate([31.6, 0.09, 26.6]) {
			cameraMountScrewTabs();
		}
		translate([-31.6, 0.09, 26.6]) {
			cameraMountScrewTabs();
		}
		translate([31.6, 0.09, -36.6]) {
			cameraMountScrewTabs();
		}
		translate([-31.6, 0.09, -36.6]) {
			cameraMountScrewTabs();
		}



		union() {
			translate([0, 0, -5]) {
				translate([46.95, 0.09, 0]) {
					cameraMountScrewTabs();
					rotate([90, 0, 0]) {
						translate([-13, 0, 0]) {
							cube([17, 15.875, 3.175], center=true);
						}
					}
				}
			}
		}	


		union() {
			translate([0, 0, -5]) {
				translate([-46.95, 0.09, 0]) {
					cameraMountScrewTabs();
					rotate([90, 0, 0]) {
						translate([13, 0, 0]) {
							cube([17, 15.875, 3.175], center=true);
						}
					}
				}
			}
		}	
	



	
}//end of cameraMountTopHalf()













//rotate([90,0,0]) {
//	cameraMountTopHalf();
//}



rotate([-90,0,0]) {
	cameraMountBottomHalf();
}


//webcam();























