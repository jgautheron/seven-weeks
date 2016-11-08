/**
 * Make a knowledge base representing musicians and instruments. Also represent musicians and their genre of music.
 */

musician(rachmaninov, piano).
musician(ravel, piano).
musician(daftpunk, electro).
musician(sevenlions, electro).
musician(aquilo, electro).
musician(clapton, guitar).
musician(bbking, guitar).
musician(page, guitar).

genre(rachmaninov, classic).
genre(ravel, classic).
genre(daftpunk, electronic).
genre(sevenlions, electronic).
genre(aquilo, electronic).
genre(clapton, blues).
genre(bbking, blues).
genre(page, rock).

/**
 * Find all musicians who play the guitar.
 * > musician(Who, guitar).
 */
