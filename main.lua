local lovely = require("lovely")
local nativefs = require("nativefs")
Mod.INITIALIZED = true
Mod.VER = "MusicMod v1.0.0-alpha"

function G.UIDEF.credits()
	local text_scale = 0.75
	local t = create_UIBox_generic_options({
		contents = {
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0 },
				nodes = {
					create_tabs({
						tabs = {
							{
								label = "Music",
								chosen = true,
								tab_definition_function = function()
									return {
										n = G.UIT.ROOT,
										config = {
											align = "cm",
											padding = 0.2,
											colour = G.C.BLACK,
											r = 0.1,
											emboss = 0.05,
											minh = 6,
											minw = 6,
										},
										nodes = {
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "Original Soundtrack",
															scale = text_scale * 0.8,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "composed by ",
															scale = text_scale * 0.8,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
													{
														n = G.UIT.T,
														config = {
															text = "LouisF",
															scale = text_scale * 0.8,
															colour = G.C.BLUE,
															shadow = true,
														},
													},
												},
											},
											G.F_EXTERNAL_LINKS and {
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													UIBox_button({
														label = { "Instagram" },
														button = "louisf_insta",
													}),
												},
											} or nil,
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0.2 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "Modified with their permission",
															scale = text_scale * 0.5,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
                      {
												n = G.UIT.R,
												config = { align = "cm", padding = 0.2 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = " -- ",
															scale = text_scale * 0.5,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
                      {
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "Cover",
															scale = text_scale * 0.8,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "arranged by ",
															scale = text_scale * 0.7,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
													{
														n = G.UIT.T,
														config = {
															text = "Dom Palombi",
															scale = text_scale * 0.7,
															colour = G.C.BLUE,
															shadow = true,
														},
													},
												},
											},
											G.F_EXTERNAL_LINKS and {
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													UIBox_button({
														label = { "Twitch" },
														button = "palombi_twitch",
													}),
												},
											} or nil,
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0.2 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "Modified with their permission",
															scale = text_scale * 0.5,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
										},
									}
								end,
							},
							{
								label = "Misc",
								tab_definition_function = function()
									return {
										n = G.UIT.ROOT,
										config = {
											align = "cm",
											padding = 0.2,
											colour = G.C.BLACK,
											r = 0.1,
											emboss = 0.05,
											minh = 6,
											minw = 6,
										},
										nodes = {
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "For Marshal",
																	scale = text_scale * 0.6,
																	colour = G.C.WHITE,
																	shadow = true,
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "Special Thanks",
																	scale = text_scale * 0.6,
																	colour = G.C.GREEN,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "tm", padding = 0 },
														nodes = {
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05, minw = 2.5 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Nicole",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Josh",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Jeremy",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Dylan",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Justin",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Daniel",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Colby",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Thomas",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Mom & Dad",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Luc & Donna",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05, minw = 2.5 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "GothicLordUK",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Big Simple",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "MALF",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Northernlion",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Purple Moss Collectors",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Dan Gheesling",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Fabian Fischer",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "newobject",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "MurphyObv",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Love2D",
																					scale = text_scale * 0.5,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
														},
													},
												},
											},
										},
									}
								end,
							},
							{
								label = "Production",
								tab_definition_function = function()
									return {
										n = G.UIT.ROOT,
										config = {
											align = "cm",
											padding = 0.2,
											colour = G.C.BLACK,
											r = 0.1,
											emboss = 0.05,
											minh = 6,
											minw = 10,
										},
										nodes = {
											{
												n = G.UIT.C,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "Publishing",
																	scale = text_scale * 0.6,
																	colour = G.C.WHITE,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "Playstack",
																	scale = text_scale * 0.6,
																	colour = G.C.RED,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "tm", padding = 0 },
														nodes = {
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Harvey Elliot",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Kevin Shrapnell",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Rob Crossley",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Liz Cheng-Moore",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Charlotte Riley",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Alexander Saunders",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Naman Budhwar",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Tomasz Wisniowski",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Patrick Johnson",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Wout van Halderen",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Shawn Cotter",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Marta Matyjewicz",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Krzysztof Niedzielski",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Rebecca Bell",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Jose Olivares",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Alex Flynn",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Justas Pugaciauskas",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Jessica Chu",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Millicent Su",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Carla Malavasi",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Pawel Kwietniak",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Ela Müller",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Fox Hambly",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Edgar Khoo",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Dami Ajiboye",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Jean Claude Vidanes",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Joanna Kierońska",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.C,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "Localization",
																	scale = text_scale * 0.6,
																	colour = G.C.WHITE,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "Universally Speaking",
																	scale = text_scale * 0.6,
																	colour = G.C.FILTER,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "tm", padding = 0 },
														nodes = {
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "German",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Spanish Latam",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "French",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Indonesian",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Italian",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Japanese",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Korean",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Dutch",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Polish",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Portuguese Brasilian",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Russian",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Simplified Chinese",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Traditional Chinese",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Project managers",
																					scale = text_scale * 0.35,
																					colour = G.C.FILTER,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
															{
																n = G.UIT.C,
																config = { align = "tl", padding = 0.05 },
																nodes = {
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Dominik May, Lisa-Marie Beck",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Román René Orozco, Javier Gómez",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Romain Vervaecke, Claire Gérard",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Yopi Jalu Paksi, Sutarto Mohammad",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Oliver Cozzio, Giulia Benassi",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Takashi Fujimoto, Ai Parlow",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Haejung Lee, Sanghyun Bae",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Ellis Jongsma, Erik Nusselder",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Mariusz Wlodarczyk, Bartosz Klofik",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Samuel Modesto, R. Cali",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Yuliia Tatsenko, Natalia Rudane",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Shuai Fang, Liqi Ye",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Pauline Lin, AngelRabbitBB",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																	{
																		n = G.UIT.R,
																		config = { align = "cl", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Ruoyang Yuan, Tania Carè",
																					scale = text_scale * 0.35,
																					colour = G.C.UI.TEXT_LIGHT,
																					shadow = true,
																				},
																			},
																		},
																	},
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.C,
												config = { align = "cm", padding = 0.1 },
												nodes = {
													{
														n = G.UIT.R,
														config = {
															align = "tm",
															padding = 0.1,
															outline_colour = G.C.JOKER_GREY,
															r = 0.1,
															outline = 1,
														},
														nodes = {
															{
																n = G.UIT.R,
																config = { align = "cm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.T,
																		config = {
																			text = "Porting",
																			scale = text_scale * 0.6,
																			colour = G.C.WHITE,
																			shadow = true,
																		},
																	},
																},
															},
															(love.system.getOS() == "Nintendo Switch")
																	and {
																		n = G.UIT.R,
																		config = { align = "cm", padding = 0 },
																		nodes = {
																			{
																				n = G.UIT.T,
																				config = {
																					text = "Platform help",
																					scale = text_scale * 0.45,
																					colour = G.C.GOLD,
																					shadow = true,
																				},
																			},
																		},
																	}
																or {
																	n = G.UIT.R,
																	config = { align = "cm", padding = 0 },
																	nodes = {
																		{
																			n = G.UIT.T,
																			config = {
																				text = "Xbox and PlayStation",
																				scale = text_scale * 0.45,
																				colour = G.C.GOLD,
																				shadow = true,
																			},
																		},
																	},
																},
															{
																n = G.UIT.R,
																config = { align = "tm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.C,
																		config = { align = "tl", padding = 0.03 },
																		nodes = {
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "Maarten De Meyer",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																		},
																	},
																},
															},
															(love.system.getOS() ~= "Nintendo Switch") and {
																n = G.UIT.R,
																config = { align = "cm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.T,
																		config = {
																			text = "Mac",
																			scale = text_scale * 0.45,
																			colour = G.C.GOLD,
																			shadow = true,
																		},
																	},
																},
															} or nil,
															{
																n = G.UIT.R,
																config = { align = "tm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.C,
																		config = { align = "tl", padding = 0.03 },
																		nodes = {
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "william341",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																		},
																	},
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = {
															align = "tm",
															padding = 0.1,
															outline_colour = G.C.JOKER_GREY,
															r = 0.1,
															outline = 1,
														},
														nodes = {
															{
																n = G.UIT.R,
																config = { align = "cm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.T,
																		config = {
																			text = "Testing/QA",
																			scale = text_scale * 0.6,
																			colour = G.C.WHITE,
																			shadow = true,
																		},
																	},
																},
															},
															{
																n = G.UIT.R,
																config = { align = "tm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.C,
																		config = { align = "tl", padding = 0.03 },
																		nodes = {
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "Vishwak Kondapalli",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "Basha Syed",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "CampfireCollective",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "drspectred",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "TheRealEvab",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "Brightqwerty",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "MrWizzrd",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																			{
																				n = G.UIT.R,
																				config = { align = "cl", padding = 0 },
																				nodes = {
																					{
																						n = G.UIT.T,
																						config = {
																							text = "mcpower",
																							scale = text_scale * 0.35,
																							colour = G.C.UI.TEXT_LIGHT,
																							shadow = true,
																						},
																					},
																				},
																			},
																		},
																	},
																},
															},
														},
													},
												},
											},
										},
									}
								end,
							},
							{
								label = "Sounds",
								tab_definition_function = function()
									return {
										n = G.UIT.ROOT,
										config = {
											align = "cm",
											padding = 0.2,
											colour = G.C.BLACK,
											r = 0.1,
											emboss = 0.05,
											minh = 6,
											minw = 10,
										},
										nodes = {
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "All sounds not listed here fall under ",
															scale = text_scale * 0.6,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
													{
														n = G.UIT.T,
														config = {
															text = "Creative Commons - CC0",
															scale = text_scale * 0.6,
															colour = G.C.BLUE,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = '"chamber_choir_chord_o.wav" (Used for Polychrome sound) by uair01 (https://freesound.org/people/uair01/sounds/65195/)',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "is licensed under ",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = "Attribution 3.0 License",
																	scale = text_scale * 0.5,
																	colour = G.C.GOLD,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = ". This work has been modified from its original state",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = '"Coffee1.wav" (Used for Tarot card sound) by Nathan Gibson (https://nathangibson.myportfolio.com)',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "is licensed under ",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = "Attribution 4.0 License",
																	scale = text_scale * 0.5,
																	colour = G.C.ORANGE,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = ".",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = '"Wood Block1.wav" (Used for Tarot card sound) by Nathan Gibson (https://nathangibson.myportfolio.com)',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "is licensed under ",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = "Attribution 4.0 License",
																	scale = text_scale * 0.5,
																	colour = G.C.ORANGE,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = ".",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = '"Toy records#06-E3-02.wav" (Used for Mult sounds) by poissonmort (https://freesound.org/people/poissonmort/sounds/253249/)',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "is licensed under ",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = "Attribution 4.0 License",
																	scale = text_scale * 0.5,
																	colour = G.C.ORANGE,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = ". This work has been modified from its original state",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
												},
											},
										},
									}
								end,
							},
							{
								label = "Imagery",
								tab_definition_function = function()
									return {
										n = G.UIT.ROOT,
										config = {
											align = "cm",
											padding = 0.2,
											colour = G.C.BLACK,
											r = 0.1,
											emboss = 0.05,
											minh = 6,
											minw = 10,
										},
										nodes = {
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "All sprites, shaders, and any other visual assets",
															scale = text_scale * 0.6,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "not listed here were created by LocalThunk.",
															scale = text_scale * 0.6,
															colour = G.C.UI.TEXT_LIGHT,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = { align = "cm", padding = 0 },
												nodes = {
													{
														n = G.UIT.T,
														config = {
															text = "©2024 - All rights reserved",
															scale = text_scale * 0.6,
															colour = G.C.BLUE,
															shadow = true,
														},
													},
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = 'The font "m6x11.ttf" by Daniel Linssen (https://managore.itch.io/m6x11)',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = "is licensed under an ",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = "Attribution License",
																	scale = text_scale * 0.5,
																	colour = G.C.GOLD,
																	shadow = true,
																},
															},
															{
																n = G.UIT.T,
																config = {
																	text = ".",
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
													not G.F_BASIC_CREDITS
															and {
																n = G.UIT.R,
																config = { align = "cm", padding = 0 },
																nodes = {
																	{
																		n = G.UIT.T,
																		config = {
																			text = "Check out his itch.io profile, he has made an incredible catalogue of games.",
																			scale = text_scale * 0.5,
																			colour = G.C.UI.TEXT_LIGHT,
																			shadow = true,
																		},
																	},
																},
															}
														or nil,
												},
											},
											{
												n = G.UIT.R,
												config = {
													align = "cm",
													padding = 0.1,
													outline_colour = G.C.JOKER_GREY,
													r = 0.1,
													outline = 1,
												},
												nodes = {
													{
														n = G.UIT.R,
														config = { align = "cm", padding = 0 },
														nodes = {
															{
																n = G.UIT.T,
																config = {
																	text = 'The Joker "Vagabond" was created by Lumpy Touch',
																	scale = text_scale * 0.5,
																	colour = G.C.UI.TEXT_LIGHT,
																	shadow = true,
																},
															},
														},
													},
												},
											},
										},
									}
								end,
							},
						},
						snap_to_nav = true,
					}),
				},
			},
		},
	})
	return t
end
