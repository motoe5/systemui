.class final Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;
.super Landroid/os/Handler;
.source "LocationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_9149(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 0
    .param p0, "isEnabled"    # Z
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .prologue
    .line 228
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method private locationActiveChanged()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;-><init>(Ljava/lang/Object;)V

    .line 221
    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 223
    return-void
.end method

.method private locationSettingsChanged()V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled()Z

    move-result v0

    .line 227
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 228
    new-instance v2, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs$1;-><init>(Z)V

    .line 227
    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationActiveChanged()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_8897(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationActiveChanged(Z)V

    return-void
.end method
