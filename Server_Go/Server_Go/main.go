
package main

import (
	"encoding/json"
		"fmt"
			"log"
				"net/http"
				)

				func main() {
					http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
							w.Header().Set("Content-Type", "application/json")
									json.NewEncoder(w).Encode(map[string]string{
												"message": "Server Ngoc Rong Online dang hoat dong!",
														})
															})

																fmt.Println("Server dang chay tai cong 8080")
																	log.Fatal(http.ListenAndServe(":8080", nil))
						
																}
															