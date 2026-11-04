import cv2
import numpy as np

rng = np.random.default_rng(42)

def get_config() -> dict[str, int]:
    """
    Returns
        The solution config. A dictionary with the following keys
            batch_size: int, batch size to use for processing
            image_width: int, image width of a prepared image
            image_height: int, image height of a prepared image
            embedding_size: int, size of the embedding vector returned by the model

    """
    return {
        "batch_size": 8,
        "image_width": 224,
        "image_height": 224,
        "embedding_size": 768
    }


def prepare_image(image: np.ndarray) -> np.ndarray:
    """Prepare the `image` for processing.

    Arguments
        image: the image to process. A uint8 array of shape (h, w, 3)

    Returns
        The processed image. A float32 array of shape (height, width, 3). The size of the resized image must be the same as reported by the config.
    """
    return (cv2.resize(image, (224, 224)) / 255).astype(np.float32)


def process_image_batch(images: np.ndarray) -> np.ndarray:
    """Process a batch of images and return image embeddings.

    Arguments
        images: A batch of images to process. A float32 array of shape (b, height, width, 3). b does not exceed batch_size reported by the config.

    Returns
        Image embeddings. A float array of shape (b, embedding_size). The last dimension must be the same as reported by the config.
    """

    return rng.random(size=(images.shape[0], 768)).astype(np.float32)
