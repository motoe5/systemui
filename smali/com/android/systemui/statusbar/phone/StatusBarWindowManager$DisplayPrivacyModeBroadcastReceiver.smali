.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayPrivacyModeBroadcastReceiver"
.end annotation


# instance fields
.field public mDisplayPrivacyModeOn:Z

.field public mWasStatusbarShowNotification:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .prologue
    const/4 v0, 0x0

    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 493
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mDisplayPrivacyModeOn:Z

    .line 494
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mWasStatusbarShowNotification:Z

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    const-string/jumbo v0, "com.motorola.mod.action.privacy.ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mDisplayPrivacyModeOn:Z

    .line 502
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mWasStatusbarShowNotification:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mDisplayPrivacyModeOn:Z

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Z)V

    .line 507
    :goto_1
    return-void

    .line 499
    :cond_1
    const-string/jumbo v0, "com.motorola.mod.action.privacy.OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->mDisplayPrivacyModeOn:Z

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$DisplayPrivacyModeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Z)V

    goto :goto_1
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.motorola.mod.action.privacy.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v1, "com.motorola.mod.action.privacy.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v1, "com.motorola.mod.permission.MOD_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 513
    return-void
.end method
