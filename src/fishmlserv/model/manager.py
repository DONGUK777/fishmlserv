import os
import argparse

def get_model_path():
    my_path = __file__
    dir_name = os.path.dirname(my_path)
    model_path = os.path.join(dir_name, "model.pkl")
    
    return model_path

def main():
    parser = argparse.ArgumentParser(description="Get the model path.")
    args = parser.parse_args()
    print(f"'{get_model_path()}'")

if __name__ == "__main__":
    main()

#def get_model_path():
    # import os ...
    # 이 함수 파일의 절대 경로를 받아온다
    # 절대 경로를 이용해 model.pkl의 경로를 조합
    # 조합된 경로를 리턴 = 끝

    # 사용 fastapi main.py 에서 아래와 같이 사용
    # from fishmlserv.model.manager import get_model_path
#    return "living for today"
