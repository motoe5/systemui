.class Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchHomeRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 146
    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 147
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_RecentsActivity$LaunchHomeRunnable_7118()V
    .locals 7

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 156
    .local v1, "opts":Landroid/app/ActivityOptions;
    if-nez v1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    .line 158
    const v3, 0x7f0100aa

    const v4, 0x7f0100ab

    .line 157
    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RecentsActivity"

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Home"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f110428

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->-get0(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$Lambda$tzHkkp2bcscWGDd1r792KLN9emc$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method
