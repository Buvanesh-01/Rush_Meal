package com.food_Application.model;

import java.util.HashMap;
import java.util.Map;

public class Cart {


	Map<Integer,CartItem>items; //efficient way  for insert and delet

	public Cart() {
		
	items = new HashMap<Integer,CartItem>();
	}
	
	public Map<Integer,CartItem> getItems(){
		return items;
	}

	public void addItem(CartItem cartItem) {

		int menu_Id = cartItem.getMenu_Id();
		
		if(items.containsKey(menu_Id)) {
			
			CartItem existingCartItem = items.get(menu_Id);
			
			 existingCartItem.setQuantity(existingCartItem.getQuantity()+1);
		}
		else {
			items.put(menu_Id, cartItem);
		}
	}

	public void updateItem(int menu_Id, int quantity) {

		if(items.containsKey(menu_Id)) 
		{
			CartItem cartItem = items.get(menu_Id);
			
			if(quantity<1) {
				items.remove(menu_Id);
				
			}
			else {
				cartItem.setQuantity(quantity);
				items.put(menu_Id, cartItem);
			}
			
		}
	}

	public void remove(int menu_Id) {
		// TODO Auto-generated method stub
		items.remove(menu_Id);
		
	}
	
	


}
