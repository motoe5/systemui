.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 381
    const v0, 0x108044e

    const v1, 0x104024c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(II)V

    .line 382
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "-this1"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 386
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get4(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 387
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    .line 389
    return v3

    .line 391
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->reboot(Z)V

    .line 407
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    return v0
.end method
