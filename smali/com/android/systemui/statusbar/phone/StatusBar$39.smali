.class Lcom/android/systemui/statusbar/phone/StatusBar$39;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    .line 3807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 3810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    .line 3813
    const/high16 v9, 0x10000000

    .line 3815
    .local v9, "flags":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getMotoCameraAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 3816
    .local v14, "motoCameraPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3817
    const/4 v9, 0x0

    .line 3827
    :goto_0
    const/16 v16, -0x60

    .line 3828
    .local v16, "result":I
    new-instance v15, Landroid/app/ActivityOptions;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 3829
    .local v15, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v1, v2, :cond_0

    .line 3839
    const/4 v1, 0x3

    .line 3838
    invoke-virtual {v15, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    .line 3842
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 3843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    .line 3845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 3847
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 3843
    const/4 v2, 0x0

    .line 3846
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 3842
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 3852
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz v1, :cond_1

    .line 3853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 3855
    :cond_1
    return-void

    .line 3819
    .end local v15    # "options":Landroid/app/ActivityOptions;
    .end local v16    # "result":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$39;->val$intent:Landroid/content/Intent;

    .line 3820
    const/high16 v2, 0x14000000

    .line 3819
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 3848
    .restart local v15    # "options":Landroid/app/ActivityOptions;
    .restart local v16    # "result":I
    :catch_0
    move-exception v13

    .line 3849
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "Unable to start activity"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
