.class public Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private taskId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/ScreenPinningRequest;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/ScreenPinningRequest;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 112
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 115
    const/16 v3, 0x7e8

    .line 116
    const v4, 0x1000108

    .line 121
    const/4 v5, -0x3

    move v2, v1

    .line 112
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 123
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 124
    const-string/jumbo v1, "ScreenPinningConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    return-object v0
.end method


# virtual methods
.method public clearPrompt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 82
    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 84
    :cond_0
    return-void
.end method

.method public getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, -0x2

    .line 154
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x13

    .line 154
    :goto_0
    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    .line 158
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x15

    goto :goto_0

    .line 159
    :cond_1
    const/16 v0, 0x51

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0250

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-ne v4, p1, :cond_1

    .line 133
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 139
    const-string/jumbo v5, "fps_onenav_enabled"

    .line 137
    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, "isOneNavEnabled":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 143
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 144
    .local v3, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v3, :cond_1

    .line 145
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTsbForScreenPinning(Z)V

    .line 150
    .end local v0    # "app":Lcom/android/systemui/SystemUIApplication;
    .end local v2    # "isOneNavEnabled":Z
    .end local v3    # "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    .line 151
    return-void

    .line 137
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isOneNavEnabled":Z
    goto :goto_1

    .line 134
    .end local v2    # "isOneNavEnabled":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public showPrompt(IZ)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "allowCancel"    # Z

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    .line 96
    new-instance v2, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setSystemUiVisibility(I)V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 102
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void

    .line 89
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method
