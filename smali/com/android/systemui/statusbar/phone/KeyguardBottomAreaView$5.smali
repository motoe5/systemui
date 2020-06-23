.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$cameraPackage:Ljava/lang/String;

.field final synthetic val$finalIntent:Landroid/content/Intent;

.field final synthetic val$motoCameraPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$cameraPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$motoCameraPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$finalIntent:Landroid/content/Intent;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 597
    const/16 v16, -0x60

    .line 607
    .local v16, "result":I
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    .line 609
    .local v15, "o":Landroid/app/ActivityOptions;
    const/4 v1, 0x3

    .line 608
    invoke-virtual {v15, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 618
    const/4 v9, 0x0

    .line 619
    .local v9, "flags":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$cameraPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$cameraPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$motoCameraPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    const/high16 v9, 0x10000000

    .line 621
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Calling default implementation using FLAG_ACTIVITY_NEW_TASK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$finalIntent:Landroid/content/Intent;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->val$finalIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 631
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 627
    const/4 v2, 0x0

    .line 630
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 626
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 636
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(I)Z

    move-result v14

    .line 637
    .local v14, "launched":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$5;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    .line 643
    return-void

    .line 633
    .end local v14    # "launched":Z
    :catch_0
    move-exception v13

    .line 634
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Unable to start camera activity"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
