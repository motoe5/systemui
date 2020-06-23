.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field private mAuto:Z

.field private mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updatePanel()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method

.method private getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 406
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 407
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 409
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 410
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const v7, 0x7f1103b6

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 414
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "DndTile"

    const-string/jumbo v6, "Error loading owner caption"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v5, ""

    return-object v5
.end method

.method private updatePanel()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 373
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    if-nez v4, :cond_0

    return-void

    .line 374
    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    .line 375
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    if-nez v4, :cond_1

    .line 376
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    .line 401
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 379
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v3, ""

    .line 380
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 381
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    :cond_2
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 384
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 385
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 387
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 386
    const v6, 0x7f1103b7

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 389
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1103b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 393
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 394
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v7}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    goto :goto_0

    .line 396
    :cond_6
    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    .line 397
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v8}, Lcom/android/systemui/volume/ZenModePanel;->setState(I)V

    .line 398
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v4, v3}, Lcom/android/systemui/volume/ZenModePanel;->setAutoText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 359
    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 362
    if-nez p2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/ZenModePanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get7(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    const v1, 0x7f0801bb

    const v2, 0x7f1101cd

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->setEmptyState(II)V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updatePanel()V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    return-object v0

    .line 360
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 361
    const v1, 0x7f0d012c

    const/4 v2, 0x0

    .line 360
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0x95

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get2()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103ed

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get6(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 423
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mZenPanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 429
    return-void
.end method

.method public setToggleState(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 337
    if-nez p1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 341
    const-string/jumbo v2, "ftm_fdn_dnd_turned_off"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 340
    invoke-static {v1, v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 343
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    const-string/jumbo v2, "DndTile"

    invoke-interface {v1, v5, v6, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 344
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mAuto:Z

    .line 350
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get3(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "DndFavoriteZen"

    .line 347
    const/4 v3, 0x3

    .line 346
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 348
    .local v0, "zen":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    const-string/jumbo v2, "DndTile"

    invoke-interface {v1, v0, v6, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method
