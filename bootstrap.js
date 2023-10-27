#!/usr/bin/env node
const os = require("os");
const subprocesses = require("child_process");

const args = process.argv.slice(2);

/**
 * 다음 속성을 가진 객체를 생성합니다:
 * @type {subprocesses.SpawnSyncOptionsWithStringEncoding}
 * @prop {NodeJS.ProcessEnv|undefined} env: 현재 프로세스의 환경 변수.
 * @prop {subprocesses.StdioOptions|undefined} stdio: 현재 프로세스의 표준 입력/출력/오류 스트림입니다.
 * @prop {BufferEncoding} encoding: 현재 프로세스의 표준 입력/출력/오류 스트림의 인코딩입니다.
 * @prop {string|URL|undefined} cwd: 현재 프로세스의 현재 작업 디렉토리입니다.
 */
const options = {
  cwd: process.cwd(),
  env: process.env,
  stdio: "inherit",
  encoding: "utf-8",
};

/**
 * 현재 운영 체제가 Windows인 경우 `옵션` 개체의 `shell` 속성을 `true`로 추가합니다.
 */
if (os.type() === "Windows_NT") {
  options.shell = true;
}

let result;

/**
 * 현재 작업 디렉터리가 프로젝트의 루트가 아니거나 추가 인수가 전달된 경우 명령을 `yarn`으로 전달합니다. 그렇지 않으면 인자 없이 `yarn`이 실행되고 부트스트랩을 수행합니다.
 */
if (args.length) {
  // 프로젝트의 루트에 있지 않거나 추가 인수가 전달된 경우 명령을 `yarn`으로 전달합니다.
  result = subprocesses.spawnSync("yarn", args, options);
} else {
  // 인자 없이 `yarn`이 실행되면 부트스트랩을 수행합니다.
  result = subprocesses.spawnSync("yarn", ["bootstrap"], options);
}

process.exitCode = result.status || 0;
