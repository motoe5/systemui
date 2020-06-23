.class public Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityIcon"
.end annotation


# static fields
.field private static final ACTIVITY_ICONS:[I

.field private static final QS_ACTIVITY_ICONS:[I

.field static final QS_WIFI_ACTIVITY_ICONS:[I

.field static final WIFI_ACTIVITY_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 267
    const v0, 0x7f0803ed

    .line 268
    const v1, 0x7f0803f9

    .line 269
    const v2, 0x7f0803fe

    .line 270
    const v3, 0x7f080402

    .line 271
    const v4, 0x7f0803ff

    .line 266
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->ACTIVITY_ICONS:[I

    .line 275
    const v0, 0x7f080392

    .line 276
    const v1, 0x7f0803a4

    .line 277
    const v2, 0x7f0803a9

    .line 278
    const v3, 0x7f0803af

    .line 279
    const v4, 0x7f0803aa

    .line 274
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->QS_ACTIVITY_ICONS:[I

    .line 283
    const v0, 0x7f08045a

    .line 284
    const v1, 0x7f08045b

    .line 285
    const v2, 0x7f08045d

    .line 286
    const v3, 0x7f08045c

    .line 282
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->WIFI_ACTIVITY_ICONS:[I

    .line 290
    const v0, 0x7f0803c8

    .line 291
    const v1, 0x7f0803c9

    .line 292
    const v2, 0x7f0803cb

    .line 293
    const v3, 0x7f0803ca

    .line 289
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->QS_WIFI_ACTIVITY_ICONS:[I

    .line 265
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qsActivity(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 312
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->QS_ACTIVITY_ICONS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static qsWifiActivity(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 321
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->QS_WIFI_ACTIVITY_ICONS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static sbActivity(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 308
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->ACTIVITY_ICONS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static sbWifiActivity(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 317
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$ActivityIcon;->WIFI_ACTIVITY_ICONS:[I

    aget v0, v0, p0

    return v0
.end method
