.class Lcom/android/systemui/volume/VolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "showA11yStream"    # Ljava/lang/Boolean;

    .prologue
    .line 1082
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1083
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set6(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 1084
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1086
    return-void

    .line 1082
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "show":Z
    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 1048
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1049
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1050
    .local v0, "density":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get4(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1051
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1052
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->cleanup()V

    .line 1053
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1054
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set0(Lcom/android/systemui/volume/VolumeDialogImpl;I)I

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1057
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1058
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get14(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 1059
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1029
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1044
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 1034
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    .line 1024
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap6(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 1078
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-get12(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 1066
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/plugins/VolumeDialogController$State;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 1039
    return-void
.end method
