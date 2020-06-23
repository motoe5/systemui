.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/TakeScreenshotService$1;
    }
.end annotation


# static fields
.field private static mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 0
    .param p0, "-value"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    sput-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->notifyScreenshotTaken()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method private notifyScreenshotTaken()V
    .locals 5

    .prologue
    .line 101
    const-string/jumbo v1, "com.motorola.actions"

    .line 103
    .local v1, "MOTO_ACTIONS_PACKAGE_NAME":Ljava/lang/String;
    const-string/jumbo v0, "com.motorola.actions.quickScreenshot.ACTION_SHOW_FDN"

    .line 105
    .local v0, "ACTION_SHOW_FDN":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v4, "com.motorola.actions"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v4, "com.motorola.actions.quickScreenshot.ACTION_SHOW_FDN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->stopScreenshot()V

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
