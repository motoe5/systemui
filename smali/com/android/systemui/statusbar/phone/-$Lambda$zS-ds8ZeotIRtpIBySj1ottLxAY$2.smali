.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_18999(Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
