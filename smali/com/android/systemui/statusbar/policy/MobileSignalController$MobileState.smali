.class public Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field callState:I

.field carrierNetworkChangeMode:Z

.field public cellBroadcastMessage:Ljava/lang/String;

.field dataConnected:Z

.field dataSim:Z

.field public isCellBroadcastEnabled:Z

.field isDefault:Z

.field isEmergency:Z

.field isFemtoCell:Z

.field maxLevel:I

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field rejectCode:I

.field roaming:Z

.field public shortFormLabel:Ljava/lang/String;

.field slotId:I

.field subId:I

.field userSetup:Z

.field wifiConnected:Z

.field wifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    .line 1238
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    .line 1239
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    .line 1242
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    .line 1248
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    .line 1249
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    .line 1250
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    .line 1253
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 1225
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/SignalController$State;

    .prologue
    .line 1257
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    move-object v0, p1

    .line 1258
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 1259
    .local v0, "state":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1260
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1261
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1262
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1263
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1264
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1265
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 1266
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 1267
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 1268
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1270
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    .line 1271
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    .line 1274
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    .line 1275
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    .line 1276
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    .line 1277
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    .line 1280
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    .line 1281
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    .line 1282
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    .line 1283
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    .line 1286
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    .line 1287
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1320
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1321
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1320
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1322
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1320
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1324
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1325
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1327
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1328
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1329
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1330
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1331
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1332
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1333
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1334
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1335
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1337
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1338
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1339
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1340
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1343
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    .line 1344
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->shortFormLabel:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1320
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1345
    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCellBroadcastEnabled:Z

    if-ne v0, v1, :cond_0

    .line 1346
    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cellBroadcastMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1320
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2c

    .line 1291
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    .line 1292
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    const-string/jumbo v0, "slotId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    const-string/jumbo v0, "subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    const-string/jumbo v0, "dataSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    const-string/jumbo v0, "networkName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    const-string/jumbo v0, "networkNameData="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    const-string/jumbo v0, "dataConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1301
    const-string/jumbo v0, "roaming="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    const-string/jumbo v0, "isDefault="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1303
    const-string/jumbo v0, "isEmergency="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1304
    const-string/jumbo v0, "airplaneMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    const-string/jumbo v0, "carrierNetworkChangeMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    const-string/jumbo v0, "userSetup="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1309
    const-string/jumbo v0, "callState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1310
    const-string/jumbo v0, "isFemtoCell="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isFemtoCell:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    const-string/jumbo v0, "wifiEnabled="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    const-string/jumbo v0, "wifiConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->wifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1314
    const-string/jumbo v0, "maxLevel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->maxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    const-string/jumbo v0, "rejectCode ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->rejectCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    return-void
.end method
