.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->registerNfcIconObserver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1163
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1166
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "NFC icon setting observer changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    .line 1169
    return-void
.end method
