.class Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;
.super Ljava/lang/Object;
.source "CarrierLabelUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public updateLabel()V
    .locals 15

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 308
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    .line 309
    :cond_0
    const-string/jumbo v0, ""

    .line 310
    .local v0, "carrierLabelOnPanel":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 311
    .local v2, "cellMsg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 313
    .local v1, "cellEnabled":Z
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v4

    .line 314
    .local v4, "hasMobileDataFeature":Z
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->getNetworkSeparator()Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "networkNameSeparator":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileSignalControllers()Landroid/util/SparseArray;

    move-result-object v11

    iget-object v14, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v14}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/systemui/statusbar/policy/NetworkController;->isRtl()Z

    move-result v14

    invoke-static {v11, v14}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap3(Landroid/util/SparseArray;Z)Ljava/util/Map;

    move-result-object v7

    .line 322
    .local v7, "msc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MobileSignalController;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 323
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 326
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_2
    return-void

    .line 334
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    .local v6, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .end local v1    # "cellEnabled":Z
    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 336
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 338
    .local v3, "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    if-nez v3, :cond_4

    .line 335
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 339
    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getMobileState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v10

    .line 340
    .local v10, "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getLabel(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    iget-object v14, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    invoke-virtual {v11, v2, v4, v14, v8}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getCellBroadcastMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    iget-boolean v14, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    invoke-virtual {v11, v1, v4, v14}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->getCellBroadcastEnabled(ZZZ)Z

    move-result v1

    .local v1, "cellEnabled":Z
    goto :goto_1

    .line 345
    .end local v1    # "cellEnabled":Z
    .end local v3    # "controller":Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .end local v10    # "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 347
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get5(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 351
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 352
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_7
    :goto_2
    return-void

    .line 355
    :cond_8
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z

    move-result v9

    .line 356
    .local v9, "show":Z
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 357
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get1(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v14

    if-eqz v9, :cond_b

    move v11, v12

    :goto_3
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_9
    if-eqz v1, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 360
    :cond_a
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 361
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    move v11, v13

    .line 357
    goto :goto_3

    .line 364
    :cond_c
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 365
    iget-object v11, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v11}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-get3(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v14, p0, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor$2;->this$0:Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;

    invoke-static {v14}, Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;->-wrap0(Lcom/android/systemui/moto/CarrierLabelUpdateMonitor;)Z

    move-result v14

    if-eqz v14, :cond_d

    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_d
    move v12, v13

    goto :goto_4
.end method
