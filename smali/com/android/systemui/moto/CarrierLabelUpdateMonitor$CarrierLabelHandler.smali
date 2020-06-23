.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;
.super Landroid/os/Handler;
.source "CarrierLabelUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierLabelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
    .param p2, "-this1"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;-><init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 459
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 461
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 462
    const-string/jumbo v3, "display_network_name"

    .line 461
    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-set1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;Z)Z

    .line 463
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$CarrierLabelHandler;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get6(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;->updateLabel()V

    goto :goto_0

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
