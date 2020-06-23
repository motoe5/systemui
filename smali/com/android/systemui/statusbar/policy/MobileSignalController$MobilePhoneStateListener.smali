.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .param p2, "subId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 802
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 803
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "callState"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 893
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged: callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 899
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 904
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 910
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v4, 0x0

    .line 916
    .local v4, "isFemtocell":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v5, v5, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 917
    :cond_0
    return-void

    .line 916
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 919
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "isFemtocell":Z
    .local v2, "ci$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 920
    .local v1, "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 921
    const/4 v3, 0x0

    .line 922
    .local v3, "cid":I
    instance-of v5, v1, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_3

    .line 923
    check-cast v1, Landroid/telephony/CellInfoLte;

    .end local v1    # "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 924
    .local v0, "cellIdentity":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    .line 926
    .end local v0    # "cellIdentity":Landroid/telephony/CellIdentityLte;
    :cond_3
    invoke-static {v3}, Lcom/android/systemui/moto/NetworkStateTracker;->cidIsFemtocell(I)Z

    move-result v4

    .line 927
    .local v4, "isFemtocell":Z
    if-eqz v4, :cond_2

    .line 930
    .end local v3    # "cid":I
    .end local v4    # "isFemtocell":Z
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    if-eq v4, v5, :cond_5

    .line 931
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v4, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    .line 932
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 934
    :cond_5
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v2, v2, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    if-nez v2, :cond_0

    return-void

    .line 941
    :cond_0
    instance-of v2, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 942
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .end local p1    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 943
    .local v0, "cid":I
    invoke-static {v0}, Lcom/android/systemui/moto/NetworkStateTracker;->cidIsFemtocell(I)Z

    move-result v1

    .line 944
    .local v1, "isFemtocell":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    if-eq v1, v2, :cond_1

    .line 945
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    .line 946
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 949
    .end local v0    # "cid":I
    .end local v1    # "isFemtocell":Z
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 884
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    .line 888
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 860
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 862
    const-string/jumbo v2, " type="

    .line 861
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    .line 866
    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 872
    :cond_1
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)V

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;I)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 880
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 821
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    const-string/jumbo v2, " dataState="

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    const-string/jumbo v2, " mDataNetType = "

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    .line 822
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nc:Lcom/android/systemui/moto/NetworkConfig;

    iget-boolean v0, v0, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    .line 833
    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    .line 839
    :cond_2
    invoke-static {}, Lcom/android/systemui/moto/NetworkStateTracker;->isMultipleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)V

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;I)V

    .line 849
    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 849
    if-eqz v0, :cond_4

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-get2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 855
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 856
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 807
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 809
    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    .line 808
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->getInstance(Landroid/content/Context;)Lcom/android/systemui/moto/NotifyLowSignalStrength;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/moto/NotifyLowSignalStrength;->notifyLowSignalStrengthIfNeeded(Landroid/telephony/SignalStrength;)V

    .line 817
    return-void

    .line 809
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
