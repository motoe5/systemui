.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->lambda$-com_android_systemui_pip_phone_PipMenuActivityController$1_5465(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
