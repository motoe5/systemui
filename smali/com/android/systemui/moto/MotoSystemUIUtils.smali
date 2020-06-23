.class public Lcom/android/systemui/moto/MotoSystemUIUtils;
.super Ljava/lang/Object;
.source "MotoSystemUIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEVDOOnFemto(Ljava/lang/String;)Z
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x0

    .line 24
    const/16 v0, 0xc

    .line 25
    .local v0, "FEMTO_SUBNET_INDEX":I
    const/16 v1, 0xc

    .line 27
    .local v1, "FEMTO_SUBNET_MASK":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 29
    :cond_0
    return v7

    .line 28
    :cond_1
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "index":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 31
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 32
    .local v3, "length":I
    const/4 v4, 0x0

    .line 33
    .local v4, "subnet_value":I
    const/16 v5, 0x31

    if-le v3, v5, :cond_2

    mul-int/lit8 v5, v2, 0x4

    if-gt v3, v5, :cond_2

    .line 34
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 35
    and-int/lit8 v5, v4, 0xc

    if-ne v5, v8, :cond_2

    .line 36
    const/4 v5, 0x1

    return v5

    .line 39
    :cond_2
    return v7
.end method

.method private static isEvdo(I)Z
    .locals 2
    .param p0, "radioTech"    # I

    .prologue
    const/4 v0, 0x1

    .line 43
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 44
    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    .line 46
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p0, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const/16 v1, 0xfa

    .line 51
    .local v1, "FEMTO_NID_MIN":I
    const/16 v0, 0xff

    .line 52
    .local v0, "FEMTO_NID_MAX":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    :cond_0
    return v4

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/moto/MotoSystemUIUtils;->isEvdo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSubnetInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getSubnetInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/moto/MotoSystemUIUtils;->isEVDOOnFemto(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    return v5

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v2

    const/16 v3, 0xfa

    if-lt v2, v3, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    .line 62
    return v5

    .line 64
    :cond_3
    return v4
.end method
