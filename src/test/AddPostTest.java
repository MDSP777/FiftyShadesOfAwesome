package test;

import java.util.Calendar;

import model.Comment;
import model.Post;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import service.PostService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/ApplicationContext.xml" })
public class AddPostTest {
	@Autowired
	private PostService postService;
	
	@Test
	public void addPost(){
//		Post p = new Post("Rissa is Awesome", 
//				"Shayane", 
//				"Rissa is awesome. She's my bae but she likes biting other people. "
//				+ "I also think she's married to another person.", 
//				Calendar.getInstance().getTime());
//		p.addComment(new Comment("Rissa", "SHAYANE!", Calendar.getInstance().getTime()));
//		p.addComment(new Comment("Marc", "HAHAHAHAHAHHA", Calendar.getInstance().getTime()));
//		p.addComment(new Comment("Stanley", "POTATO!", Calendar.getInstance().getTime()));
//		
//		Post p = new Post("Uncharted 4: A Thief's End", "@Wikipedia",
//				"Uncharted 4: A Thief's End is an action-adventure third-person shooter video game developed by "
//				+ "Naughty Dog and published by Sony Interactive Entertainment for the PlayStation 4 video game "
//				+ "console. As the sequel to the 2011 game Uncharted 3: Drake's Deception, it is the conclusion "
//				+ "to the Uncharted series starring Nathan Drake.\n"
//				+ "\n"
//				+ "The story, set several years after the events of Uncharted 3: Drake's Deception, follows series "
//				+ "protagonist Nathan Drake, who has retired from fortune hunting, reunite with his older brother "
//				+ "Sam and longtime partner Sully to search for clues for the location of Captain Henry Avery’s "
//				+ "long-lost treasure to save his brother.\n"
//				+ "\n"
//				+ "The game was first teased at the PlayStation 4 U.S. launch event on November 14, 2013, as the "
//				+ "next main entry in the Uncharted franchise. It was finally unveiled as Uncharted 4: A Thief's End "
//				+ "on 9 June 2014, at Sony's press conference during E3, with a small teaser debuting the game's real "
//				+ "time visuals. The game was released worldwide on May 10, 2016 and received widespread acclaim from "
//				+ "critics, with praise particularly given to the game's gameplay, presentation, narrative and visuals.",
//				Calendar.getInstance().getTime());
//		postService.addPost(p);
//		
//		p = new Post("Dark Souls III", "@Wikipedia",
//				"Set in the Kingdom of Lothric, a bell has rung to send a sign that the First Flame, responsible for "
//				+ "prolonging the Age of Fire, is dying out. As has happened many times before, the coming of the Age "
//				+ "of Dark produces the undead, cursed beings that rise up after death. The Age of Fire can be prolonged "
//				+ "with the linking of the fires, a ritual in which great lords and heroes sacrifice their souls to "
//				+ "kindle the First Flame. Unlike the previous times though, this time the destined undead, Prince "
//				+ "Lothric, has abandoned his duty and left the First Flame to die out. The bell is the last hope for "
//				+ "the Age of Fire, raising previous Lords of Cinder, heroes who have linked the flame across aeons, "
//				+ "so that their essences may be combined to rekindle the almost completely dead First Flame. However, "
//				+ "most of the Lords of Cinder abandon their thrones rather than linking the fires, only one of them "
//				+ "remaining, and an undead known as the Ashen One rises and takes on the responsibility of preventing "
//				+ "an oncoming apocalypse brought about by the endless conflict between fire and dark. In order to link "
//				+ "the flame, the Ashen One must return three other previous Lords of Cinder, as well as Prince Lothric, "
//				+ "back to their thrones in the Firelink Shrine. The Lords include the Abyss Watchers, a group of "
//				+ "warriors sworn to protect the land from the abyss and linked by a single soul, Yhorm the Giant, "
//				+ "who was once a conqueror of the very people he then sacrificed his life for, and Archdeacon Aldrich, "
//				+ "who was forced to become a Lord of Cinder despite an enjoyment of consuming both men and gods. "
//				+ "Because the Lords' decisions to leave, the Ashen One must return their essences and power back to "
//				+ "their throne by defeating them and returning their ashes to the shrine. Once the Ashen One succeeds "
//				+ "in returning the Lords of Cinder including Lothric to their thrones, they travel to the ruins of the "
//				+ "Kiln of the First Flame. There, they encounter the Soul of Cinder, an amalgamation of all the "
//				+ "previous Lords of Cinder who had linked the flame in the past. Once the Soul of Cinder is defeated, "
//				+ "four endings are possible based on the player's actions during the game.",
//				Calendar.getInstance().getTime());
//		postService.addPost(p);
		for(int i=1; i<41; i++){
			Post p = new Post(i+"", i+"", i+"", Calendar.getInstance().getTime());
			for(int j=1; j<7; j++){
				p.addComment(new Comment(j+"", j+"", Calendar.getInstance().getTime()));
			}
			postService.addPost(p);
		}
	}
}
