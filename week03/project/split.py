def main():
    keywords_list = [
        {"id": 1, "keyword": "Baby"},
        {"id": 2, "keyword": "Battle"},
        {"id": 3, "keyword": "Blue"},
        {"id": 4, "keyword": "Boat"},
        {"id": 5, "keyword": "Christ"},
        {"id": 6, "keyword": "Flowers"},
        {"id": 7, "keyword": "Food"},
        {"id": 8, "keyword": "Girl"},
        {"id": 9, "keyword": "Landscape"},
        {"id": 10, "keyword": "People"},
        {"id": 11, "keyword": "Water"},
    ]

    artworks_keywords = [
        {"artwork_id": 1, "keyword": "flowers"},
        {"artwork_id": 2, "keyword": "blue, landscape"},
        {"artwork_id": 3, "keyword": "flowers"},
        {"artwork_id": 4, "keyword": "girl, people, battle"},
        {"artwork_id": 5, "keyword": "boat, water, people, Christ"},
        {"artwork_id": 6, "keyword": "girl, people"},
        {"artwork_id": 7, "keyword": "food, people, Christ"},
        {"artwork_id": 8, "keyword": "girl, people"},
        {"artwork_id": 9, "keyword": "water, landscape"},
        {"artwork_id": 10, "keyword": "landscape"},
        {"artwork_id": 11, "keyword": "water, people, baby"},
        {"artwork_id": 12, "keyword": "landscape, people, flowers"},
        {"artwork_id": 13, "keyword": "blue, people"},
    ]

    for item in artworks_keywords:
        for keyword in item['keyword'].split(','):
            keyword_id = next((obj for obj in keywords_list if obj['keyword'].lower() == keyword.strip().lower()), None)
            print(f"insert into artworks_keywords (artwork_id, keyword_id) values ({item['artwork_id']}, {keyword_id['id']});")


if __name__ == "__main__":
    main()
