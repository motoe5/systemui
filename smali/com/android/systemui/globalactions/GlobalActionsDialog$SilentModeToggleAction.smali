.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 997
    const v1, 0x108030a

    .line 998
    const v2, 0x1080309

    .line 999
    const v3, 0x1040250

    .line 1000
    const v4, 0x104024f

    .line 1001
    const v5, 0x104024e

    move-object v0, p0

    .line 997
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    .line 1002
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1005
    if-eqz p1, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get3(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1010
    :goto_0
    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get3(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    return v0
.end method
