.class Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;
.super Ljava/lang/Object;
.source "MotoSoundPhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/motorola/multibluetooth/MultiBTFrameworkHelper$MultiBTCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->initMultiBT(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;->this$0:Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public MultiBTStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MBAStateChanged: state: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;->this$0:Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    invoke-static {v0, p1}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->-set0(Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;I)I

    .line 74
    iget-object v0, p0, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy$1;->this$0:Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;

    invoke-virtual {v0}, Lcom/motorola/systemui/statusbar/phone/MotoSoundPhoneStatusBarPolicy;->updateBluetooth()V

    .line 75
    return-void
.end method
