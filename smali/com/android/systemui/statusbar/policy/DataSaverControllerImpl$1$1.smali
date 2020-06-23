.class Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;
.super Ljava/lang/Object;
.source "DataSaverControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->onRestrictBackgroundChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

.field final synthetic val$isDataSaving:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AllBgDataRestrictionMonitor;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    goto :goto_0
.end method
