---
created: 23-09-23T20:04:10
tags: [결제위젯, Android, SDK, 토스페이먼츠, 개발자센터]
source: https://docs.tosspayments.com/reference/widget-android#requestpayment
author:
---

# 결제위젯 Android SDK | 토스페이먼츠 개발자센터

목차

- [SDK 추가](https://docs.tosspayments.com/reference/widget-android#sdk-추가)

  - [요구 사항](https://docs.tosspayments.com/reference/widget-android#요구-사항)
  - [Gradle 설정](https://docs.tosspayments.com/reference/widget-android#gradle-설정)
  - [Layout 설정](https://docs.tosspayments.com/reference/widget-android#layout-설정)

- [PaymentWidget](https://docs.tosspayments.com/reference/widget-android#paymentwidget)

  - [생성자](https://docs.tosspayments.com/reference/widget-android#생성자)
  - [renderPaymentMethods](https://docs.tosspayments.com/reference/widget-android#renderpaymentmethods)
  - [requestPayment](https://docs.tosspayments.com/reference/widget-android#requestpayment)
  - [updateAmount](https://docs.tosspayments.com/reference/widget-android#updateamount)
  - [addPaymentMethodEventListener](https://docs.tosspayments.com/reference/widget-android#addpaymentmethodeventlistener)
  - [renderAgreement](https://docs.tosspayments.com/reference/widget-android#renderagreement)
  - [addAgreementStatusListener](https://docs.tosspayments.com/reference/widget-android#addagreementstatuslistener)

결제위젯 Android SDK는 Android 환경에서 사용할 수 있는 결제위젯 메서드를 제공합니다. SDK를 추가하고 메서드를 사용하는 방법을 알아봅니다.

## [![SDK 추가](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#sdk-추가)SDK 추가

### [![요구 사항](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#요구-사항)요구 사항

결제위젯 Android SDK를 설치하기 전에 최소 요구 사항을 확인하세요.

- minSdk 21 이상

### [![Gradle 설정](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#gradle-설정)Gradle 설정

프로젝트의 Gradle 설정을 아래와 같이 설정하면 결제위젯 Android SDK를 사용하실 수 있습니다.

settings.gradle(Project)

```groovy
dependencyResolutionManagement {
  ...
  repositories {
    ...
    mavenCentral()
    maven { url "https://jitpack.io" }
  }
}
```

build.gradle(App)

```groovy
dependencies {
  ...
  implementation 'com.github.tosspayments:payment-sdk-android:<CURRENT_VERSION>'
}
```

### [![Layout 설정](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#layout-설정)Layout 설정

`res/layout` 디렉토리에 결제 화면의 Layout XML 파일을 생성하세요. 파일 안에 `PaymentMethod`을 추가해주세요.

activity.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
  xmlns:app="http://schemas.android.com/apk/res-auto"
  xmlns:tools="http://schemas.android.com/tools"
  android:layout_width="match_parent"
  android:layout_height="match_parent"
  android:background="@color/white">
    ...
<com.tosspayments.paymentsdk.view.PaymentMethod
      android:id="@+id/payment_widget"
      android:layout_width="match_parent"
      android:layout_height="wrap_content"
      android:layout_marginTop="8dp" />
<com.tosspayments.paymentsdk.view.Agreement
      android:id="@+id/agreement_widget"
      android:layout_width="match_parent"
      android:layout_height="wrap_content" />
    ...
</androidx.constraintlayout.widget.ConstraintLayout>
```

토스페이먼츠 결제위젯입니다.

### [![생성자](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#생성자)생성자

```kotlin
PaymentWidget(
  activity: AppCompatActivity,
  clientKey: String,
  customerKey: String,
  options: PaymentWidgetOptions?
)
```

#### [![파라미터](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#파라미터)파라미터

- activity

  Native SDK가 적용된 Activity입니다.

- clientKey

  내 상점의 클라이언트 키입니다. [API 키 페이지](https://developers.tosspayments.com/my/api-keys)에서 확인할 수 있습니다.

- customerKey

  고객 ID입니다. 다른 사용자가 이 값을 알게 되면 악의적으로 사용할 수 있어 자동 증가하는 숫자는 안전하지 않습니다. [UUID](https://ko.wikipedia.org/wiki/%EB%B2%94%EC%9A%A9_%EA%B3%A0%EC%9C%A0_%EC%8B%9D%EB%B3%84%EC%9E%90)와 같이 충분히 무작위적인 고유 값으로 생성해주세요. 영문 대소문자, 숫자, 특수문자 `-`, `_`, `=`, `.`, `@` 를 최소 1개 이상 포함한 최소 2자 이상 최대 300자 이하의 문자열이어야 합니다.

  비회원 결제에는 `PaymentWidget.ANONYMOUS`를 사용하세요.

- options optional

  [결제위젯 Pro 플랜](https://docs.tosspayments.com/guides/payment-widget/pro/overview) 기능을 설정하는 `PaymentWidgetOptions` 객체입니다.

- PaymentWidgetOptions

  ```kotlin
  class PaymentWidgetOptions {
    class Builder{
        fun build(): PaymentWidgetOptions
        fun brandPayOption(redirectUrl: String): Builder
    }
  }
  ```

- Builder

  `PaymentWidgetOptions` 객체를 생성하는 Builder 클래스입니다.

- build

  `PaymentWidgetOptions` 객체를 생성합니다.

- brandPayOption

  [결제위젯에 브랜드페이를 추가](https://docs.tosspayments.com/guides/payment-widget/pro/brandpay)할 때 설정합니다. `redirectUrl`을 파라미터로 넘기세요.

  리다이렉트 URL에는 [Access Token 발급 과정](https://docs.tosspayments.com/guides/payment-widget/pro/brandpay#1-access-token-%EB%B0%9C%EA%B8%89)에 필요한 값이 돌아옵니다. Access Token은 브랜드페이 고객을 식별하고 고객의 결제 권한을 증명합니다. 값을 넣지 않으면 [개발자센터 > 브랜드페이 페이지](https://developers.tosspayments.com/my/brandpay)에 최초로 등록한 리다이렉트 URL이 기본값으로 들어갑니다.

### [![renderPaymentMethods](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#renderpaymentmethods)renderPaymentMethods

결제위젯을 렌더링하는 메서드입니다.

```kotlin
renderPaymentMethods(
  method: PaymentMethod,
  amount: PaymentMethod.Rendering.Amount,
  options: PaymentMethod.Rendering.Options? = null,
  paymentWidgetStatusListener: PaymentWidgetStatusListener
)
```

#### [![파라미터](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#파라미터-1)파라미터

- method

  `PaymentMethod` 객체입니다.

  ```kotlin
  PaymentMethod(
    context: Context,
    attrs: AttributeSet? = null
  ): View
  ```

- context

  [`Context`](https://developer.android.com/reference/kotlin/android/content/Context)입니다.

- attrs

  [`AttributeSet`](https://developer.android.com/reference/kotlin/android/util/AttributeSet)입니다.

- amount

  결제 금액 정보입니다. 결제 금액, 통화, 국가 정보가 들어가는 `PaymentMethod.Rendering.Amount` 객체입니다.

  ```kotlin
  data class Amount(
    val value: Number,
    val currency: Currency = Currency.KRW,
    val country: String = "KR"
  )
  ```

- value

  결제 금액입니다.

- currency

  결제 통화입니다. `PaymentMethod.Rendering.Currency`를 사용하세요.

  ```kotlin
  enum class Currency {
      KRW, AUD, EUR, GBP, HKD, JPY, SGD, USD
  }
  ```

- country

  결제한 국가입니다. 기본 값은 `KR`입니다. [ISO-3166의 두 자리 국가 코드](https://ko.wikipedia.org/wiki/ISO_3166-1_alpha-2)를 모두 지원합니다.

- options

  결제위젯에 추가할 옵션입니다. `PaymentMethod.Rendering.Options` 객체입니다.

  ```kotlin
  data class Options(
    val variantKey: String
  )
  ```

- variantKey

  [멀티 결제 UI](https://docs.tosspayments.com/guides/payment-widget/integration#%EB%A9%80%ED%8B%B0-%EA%B2%B0%EC%A0%9C-ui-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0)를 사용할 때 설정합니다. 렌더링하고 싶은 결제위젯의 키 값을 넣으세요.

- paymentWidgetStatusListener

  결제위젯의 렌더링 상태를 감지하는 리스너입니다.

  ```kotlin
  interface PaymentWidgetStatusListener {
  fun onLoad()
  }
  ```

- onLoad

  위젯 렌더링이 완료되면 호출되는 메서드입니다.

### [![requestPayment](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#requestpayment)requestPayment

고객이 선택한 결제수단의 결제창을 호출하는 메서드입니다.

```kotlin
requestPayment(
  paymentInfo: PaymentMethod.PaymentInfo,
  paymentCallback: PaymentCallback
)
```

#### [![파라미터](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#파라미터-2)파라미터

- paymentInfo

  결제 정보가 담긴 `PaymentMethod.PaymentInfo`입니다.

  ```kotlin
  data class PaymentInfo(
    val orderId: String,
    val orderName: String
  ) : TossPaymentInfo(orderId, orderName) {
  var taxExemptionAmount: Number
  var useEscrow: Boolean?
  var escrowProducts: List<EscrowProduct>?
  var customerMobilePhone: String?
  var showCustomerMobilePhone: Boolean
  var mobileCarrier: List<TossPaymentMobileCarrier>?
  }
  ```

- orderId

  주문을 구분하는 ID입니다. 충분히 무작위한 값을 생성해서 각 주문마다 고유한 값을 넣어주세요. 영문 대소문자, 숫자, 특수문자 `-`, `_`, `=`로 이루어진 6자 이상 64자 이하의 문자열이어야 합니다.

- orderName

  주문명입니다. 예를 들면 `생수 외 1건` 같은 형식입니다. 최대 길이는 100자입니다.

- taxExemptionAmount

  과세를 제외한 결제 금액(컵 보증금 등)입니다. 값을 넣지 않으면 기본값인 `0`으로 설정됩니다. 카드 결제 또는 간편결제로 계좌이체할 때 사용하세요.

  \* 과세 제외 금액이 있는 카드 결제는 부분 취소가 안 됩니다.

- useEscrow

  에스크로 사용 여부입니다. 값을 주지 않으면 결제창에서 고객이 직접 에스크로 결제 여부를 선택합니다.

- escrowProducts

  각 상품의 상세 정보 객체를 담는 배열입니다. 가상계좌, 계좌이체에서 에스크로를 사용하는 상점이라면 필수 파라미터입니다.

  예를 들어 사용자가 세 가지 종류의 상품을 구매했다면 길이가 3인 배열이어야 합니다.

  ```kotlin
  data class EscrowProduct(
    val id: String,
    val name: String,
    val code: String,
    val unitPrice: Long,
    val quantity: Int
  )
  ```

- id

  상품의 ID입니다. 이 값은 유니크해야 합니다.

- name

  상품 이름입니다.

- code

  상점에서 사용하는 상품 관리 코드입니다.

- unitPrice

  상품의 가격입니다. 전체를 합한 가격이 아닌 상품의 개당 가격입니다.

- quantity

  상품 구매 수량입니다.

- customerMobilePhone

  고객의 휴대폰 번호입니다. 가상계좌 입금 안내가 전송되는 번호입니다.

- showCustomerMobilePhone

  가상계좌 결제창에서 휴대폰 번호 입력 필드 노출 여부입니다. `false`를 넘기면 가상계좌 결제창에서 휴대폰 번호 입력 필드를 보여주지 않습니다. 기본값은 `true` 입니다.

- mobileCarrier

  휴대폰 결제창에서 선택할 수 있는 통신사를 제한합니다. 배열에 통신사 코드를 추가하면 해당 통신사 코드만 선택할 수 있는 결제창이 뜹니다. 값을 넣지 않으면 모든 통신사 코드를 선택할 수 있는 결제창이 뜹니다.

  ```kotlin
  enum class TossPaymentMobileCarrier(val displayName : String) {
  KT("KT"),
  LGU("LG 유플러스"),
  SKT("SK 텔레콤"),
  HELLO("LG 헬로모바일"),
  KCT("티플러스"),
  SK7("SK 세븐모바일")
  }
  ```

- paymentCallback

  결제 승인 결과를 수신하는 Callback입니다.

- PaymentCallback

  ```kotlin
  interface PaymentCallback {
  fun onPaymentSuccess(success: TossPaymentResult.Success)
  fun onPaymentFailed(fail: TossPaymentResult.Fail)
  }
  ```

- onPaymentSuccess

  결제가 성공하면 호출되는 메서드입니다. `TossPaymentsResult.Success`를 전달합니다.

  `TossPaymentsResult.Success`로 돌아온 결제 정보를 검증하고, [결제 승인을 요청하세요](https://docs.tosspayments.com/reference#%EA%B2%B0%EC%A0%9C-%EC%8A%B9%EC%9D%B8).

- onPaymentFailed

  결제가 실패하면 호출되는 메서드입니다. `TossPaymentsResult.Fail`을 전달합니다.

- TossPaymentResult

  ```kotlin
  sealed class TossPaymentResult{
  class Success(paymentKey: String, orderId: String, amount: Number, additionalParameters: Map<String, String>): TossPaymentResult()
  class Fail(errorCode: String, errorMessage: String, orderId: String): TossPaymentResult()
  }
  ```

- Success

  결제 성공 결과 정보입니다.

- paymentKey

  결제를 식별하는 키 값입니다. [결제 승인](https://docs.tosspayments.com/reference#%EA%B2%B0%EC%A0%9C-%EC%8A%B9%EC%9D%B8), [결제 조회](https://docs.tosspayments.com/reference#paymentkey%EB%A1%9C-%EA%B2%B0%EC%A0%9C-%EC%A1%B0%ED%9A%8C), [결제 취소](https://docs.tosspayments.com/reference#%EA%B2%B0%EC%A0%9C-%EC%B7%A8%EC%86%8C) 등 운영에 필요한 값입니다.

- orderId

  주문 ID입니다. 결제 요청에 담아 보낸 값입니다.

- amount

  결제할 금액입니다.

- additionalParmeters

  [브랜드페이를 추가하는 Pro 플랜](https://docs.tosspayments.com/guides/payment-widget/pro/brandpay) 기능을 사용하고 있다면 필요한 파라미터입니다.

- paymentType

  결제 유형입니다. `NORMAL`, `BRANDPAY` 중 하나입니다.

  - `NORMAL`: 일반 결제입니다. [코어 결제 승인 API](https://docs.tosspayments.com/reference#%EA%B2%B0%EC%A0%9C-%EC%8A%B9%EC%9D%B8)를 호출해서 결제를 완료하세요.
  - `BRANDPAY`: 브랜드페이 결제입니다. [브랜드페이 결제 승인 API](https://docs.tosspayments.com/reference/brandpay#%EA%B2%B0%EC%A0%9C-%EC%8A%B9%EC%9D%B8)를 호출해서 결제를 완료하세요.

- Fail

  결제 실패 결과 정보입니다.

- errorCode

  에러 코드입니다. [SDK 에러](https://docs.tosspayments.com/reference/codes#sdk-%EC%97%90%EB%9F%AC)가 돌아옵니다. [`failUrl`로 전달되는 에러](https://docs.tosspayments.com/reference/error-codes#failurl%EB%A1%9C-%EC%A0%84%EB%8B%AC%EB%90%98%EB%8A%94-%EC%97%90%EB%9F%AC), [공통 SDK 에러](https://docs.tosspayments.com/reference/error-codes#%EA%B2%B0%EC%A0%9C%EA%B3%B5%ED%86%B5-sdk-%EC%97%90%EB%9F%AC), [결제위젯 SDK 에러](https://docs.tosspayments.com/reference/error-codes#%EA%B2%B0%EC%A0%9C%EC%9C%84%EC%A0%AF-sdk-%EC%97%90%EB%9F%AC)가 모두 포함됩니다.

- errorMessage

  에러 메시지입니다.

- orderId

  주문 ID입니다. 결제 요청에 담아 보낸 값입니다.

### [![updateAmount](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#updateamount)updateAmount

```kotlin
updateAmount(amount: Number)
```

#### [![파라미터](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#파라미터-3)파라미터

- amount

새로운 결제 금액입니다.### [![addPaymentMethodEventListener](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#addpaymentmethodeventlistener)addPaymentMethodEventListener

결제위젯 [커스텀 결제수단・간편결제 직연동](https://docs.tosspayments.com/guides/payment-widget/pro/custom)에 이벤트 리스너를 추가합니다.

```kotlin
addPaymentMethodEventListener(listener: PaymentMethodEventListener)
```

- listener

  아래 이벤트를 수신하는 리스너입니다.

  ```kotlin
  open class PaymentMethodEventListener {
  open fun onCustomRequested(paymentMethodKey: String) {}
  open fun onCustomPaymentMethodSelected(paymentMethodKey: String) {}
  open fun onCustomPaymentMethodUnselected(paymentMethodKey: String) {}
  }
  ```

  - `onCustomRequested`: 고객이 [커스텀 결제수단](https://docs.tosspayments.com/guides/payment-widget/pro/custom)으로 결제 요청을 하면 발생하는 이벤트입니다.
  - `onCustomPaymentMethodSelected`: 고객이 [커스텀 결제수단](https://docs.tosspayments.com/guides/payment-widget/pro/custom)을 선택하면 발생하는 이벤트입니다.
  - `onCustomPaymentMethodUnselected`: 고객이 [커스텀 결제수단](https://docs.tosspayments.com/guides/payment-widget/pro/custom) 선택을 해제하면 발생하는 이벤트입니다.

### [![renderAgreement](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#renderagreement)renderAgreement

이용약관 위젯을 렌더링하는 메서드입니다.

```kotlin
renderAgreement(
  agreement: Agreement,
  paymentWidgetStatusListener: PaymentWidgetStatusListener?
)
```

- agreement

  화면에 렌더링할 이용약관 위젯 객체입니다.

  ```kotlin
  Agreement(
    context: Context,
    attrs: AttributeSet? = null
  ): View
  ```

- context

  [`Context`](https://developer.android.com/reference/kotlin/android/content/Context)입니다.

- attrs

  [`AttributeSet`](https://developer.android.com/reference/kotlin/android/util/AttributeSet)입니다.

- paymentWidgetStatusListener

  이용약관 위젯의 렌더링 상태를 감지하는 [리스너](https://docs.tosspayments.com/reference/widget-android#paymentwidgetstatuslistener)입니다.

  ```kotlin
  interface PaymentWidgetStatusListener {
  fun onLoad()
  }
  ```

- onLoad

  위젯 렌더링이 완료되면 호출되는 메서드입니다.

### [![addAgreementStatusListener](https://static.toss.im/icons/svg/icon-link-mono.svg)](https://docs.tosspayments.com/reference/widget-android#addagreementstatuslistener)addAgreementStatusListener

고객 이용약관 동의 이벤트에 리스너를 추가합니다.

```kotlin
addAgreementStatusListener(listener: AgreementStatusListener)
```

- listener

  이용약관 상태 변경을 수신하는 리스너입니다.

- AgreementStatusListener

  ```kotlin
  interface AgreementStatusListener {
  fun onAgreementStatusChanged(agreementStatus: AgreementStatus)
  }
  ```

- onAgreementStatusChanged

  이용약관 동의 상태가 변경되면 호출되는 메서드입니다.

- AgreementStatus

  ```kotlin
  data class AgreementStatus(
    val agreedRequiredTerms: Boolean,
    val terms: List<AgreementTerm>
  )
  ```

- agreedRequiredTerms

  고객이 모든 필수 약관에 동의했는지 알려줍니다.

- terms

  개별 약관에 동의했는지 알려줍니다.

  ```kotlin
  data class AgreementTerm(
    val id: String,
    val agreed: Boolean,
    val required: Boolean
  )
  ```

- id string

  약관의 식별자입니다.

- agreed boolean

  약관의 고객 동의 여부입니다.

- required boolean

  약관의 필수 여부입니다.

[결제위젯 Android SDK | 토스페이먼츠 개발자센터](https://docs.tosspayments.com/reference/widget-android#requestpayment)
