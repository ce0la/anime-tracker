const express = require('express');
const adminController = require('../controllers/admin');

const router = express.Router();

router.get('/', adminController.getIndex);

router.get('/add-anime', adminController.getAddAnime);

router.post('/add-anime', adminController.postAnime);

router.post('/edit-anime', adminController.postEditAnime);

router.post('/delete', adminController.postDelete);

router.get('/:animeId', adminController.getAnime);

router.get('/edit-anime/:animeId', adminController.getEditAnime);

module.exports = router;
