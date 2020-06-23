.class public Lcom/android/systemui/moto/SimStates;
.super Ljava/lang/Object;
.source "SimStates.java"


# instance fields
.field private mPhoneCount:I

.field private mSimStates:[I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 3
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    .line 20
    if-nez p1, :cond_0

    .line 21
    iget v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    .line 22
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    .line 26
    iget v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    aput v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/moto/SimStates;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 31
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/systemui/moto/SimStates;
    .locals 3

    .prologue
    .line 83
    new-instance v1, Lcom/android/systemui/moto/SimStates;

    iget-object v2, p0, Lcom/android/systemui/moto/SimStates;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {v1, v2}, Lcom/android/systemui/moto/SimStates;-><init>(Landroid/telephony/TelephonyManager;)V

    .line 84
    .local v1, "newS":Lcom/android/systemui/moto/SimStates;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/systemui/moto/SimStates;->getState(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/moto/SimStates;->setState(II)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/moto/SimStates;->clone()Lcom/android/systemui/moto/SimStates;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/systemui/moto/SimStates;)Z
    .locals 4
    .param p1, "ss"    # Lcom/android/systemui/moto/SimStates;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/moto/SimStates;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ne v1, v2, :cond_2

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/systemui/moto/SimStates;->getState(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/moto/SimStates;->getState(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 94
    return v3

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 99
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public getState(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 59
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    aget v0, v0, p1

    return v0

    .line 62
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hasNoSims()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 67
    .local v0, "state":I
    if-eq v0, v6, :cond_0

    .line 68
    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    .line 69
    return v2

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "state":I
    :cond_1
    return v6
.end method

.method public isSimAbsent(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/moto/SimStates;->getState(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimError(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/moto/SimStates;->getState(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # I

    .prologue
    .line 53
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/moto/SimStates;->mSimStates:[I

    aput p2, v0, p1

    .line 56
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    return v0
.end method

.method public updateFromIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 38
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget v2, p0, Lcom/android/systemui/moto/SimStates;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 41
    const-string/jumbo v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "stateExtra":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/moto/SimStates;->setState(II)V

    .line 51
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v1    # "stateExtra":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/moto/SimStates;->setState(II)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/moto/SimStates;->setState(II)V

    goto :goto_0
.end method
