.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 586
    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    check-cast v1, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    .line 589
    .local v1, "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 590
    .local v0, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    if-nez v0, :cond_1

    return-object v1

    .line 588
    .end local v0    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 591
    .restart local v0    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .restart local v1    # "v":Lcom/android/systemui/qs/tiles/DataUsageDetailView;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 592
    const v3, 0x7f0a0231

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get4(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->-get0(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    return-object v1

    .line 593
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x75

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isDisableMobileDataSupported(Landroid/content/Context;I)Z

    move-result v0

    .line 534
    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->fireToggleStateChanged(Z)V

    .line 601
    :cond_0
    return-void
.end method

.method public setToggleState(Z)V
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 547
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x9b

    invoke-static {v3, v4, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 550
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 551
    const v4, 0x7f05005b

    .line 550
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 553
    .local v0, "featureFlagIndicateOff":Z
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 554
    const v4, 0x7f05005c

    .line 553
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 556
    .local v1, "ftr_5261":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    .line 557
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 558
    const-string/jumbo v4, "mobile_data"

    const/4 v5, 0x0

    .line 557
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 558
    const/4 v4, 0x1

    .line 557
    if-ne v3, v4, :cond_3

    .line 560
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/systemui/qs/MotoConfirmationStubActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.motorola.vzw.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    if-eqz v0, :cond_2

    .line 563
    const-string/jumbo v3, "carrier"

    const-string/jumbo v4, "vzw"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    :goto_0
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get0(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 577
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 565
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "carrier"

    const-string/jumbo v4, "att"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 572
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/CellularTile;->-get2(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/CellularTile;->-get5(Lcom/android/systemui/qs/tiles/CellularTile;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(IZ)V

    goto :goto_1
.end method
