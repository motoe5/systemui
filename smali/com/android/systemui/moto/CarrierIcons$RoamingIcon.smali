.class public Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoamingIcon"
.end annotation


# static fields
.field private static final QS_ROAMING_ICONS:[I

.field private static final ROAMING_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 236
    const v0, 0x7f080403

    .line 237
    const v1, 0x7f080432

    .line 238
    const v2, 0x7f080439

    .line 239
    const v3, 0x7f080434

    .line 240
    const v4, 0x7f080433

    .line 235
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->ROAMING_ICONS:[I

    .line 243
    const v0, 0x7f0803b0

    .line 244
    const v1, 0x7f0803b1

    .line 245
    const v2, 0x7f0803b8

    .line 246
    const v3, 0x7f0803b3

    .line 247
    const v4, 0x7f0803b2

    .line 242
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->QS_ROAMING_ICONS:[I

    .line 234
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qsRoaming(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 261
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->QS_ROAMING_ICONS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static sbRoaming(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 257
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$RoamingIcon;->ROAMING_ICONS:[I

    aget v0, v0, p0

    return v0
.end method
