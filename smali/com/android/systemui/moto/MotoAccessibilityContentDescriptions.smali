.class public Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "MotoAccessibilityContentDescriptions.java"


# static fields
.field private static final PHONE_SIGNAL_STRENGTH:[I

.field public static final ZZ_MOTO_PHONE_SIGNAL_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 21
    const v0, 0x7f11007b

    .line 22
    const v1, 0x7f110087

    .line 23
    const v2, 0x7f11008a

    .line 24
    const v3, 0x7f110089

    .line 25
    const v4, 0x7f110088

    .line 20
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->ZZ_MOTO_PHONE_SIGNAL_STRENGTH:[I

    .line 15
    return-void

    .line 29
    :array_0
    .array-data 4
        0x7f11007b
        0x7f110087
        0x7f11008a
        0x7f110089
        0x7f110587
        0x7f110088
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentDescription(II)I
    .locals 1
    .param p0, "maxLevel"    # I
    .param p1, "level"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p0, v0, :cond_1

    .line 41
    if-le p1, p0, :cond_0

    .line 42
    move p1, p0

    .line 44
    :cond_0
    sget-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v0, p1

    return v0

    .line 47
    :cond_1
    sget-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->ZZ_MOTO_PHONE_SIGNAL_STRENGTH:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 48
    sget-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->ZZ_MOTO_PHONE_SIGNAL_STRENGTH:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 50
    :cond_2
    sget-object v0, Lcom/android/systemui/moto/MotoAccessibilityContentDescriptions;->ZZ_MOTO_PHONE_SIGNAL_STRENGTH:[I

    aget v0, v0, p1

    return v0
.end method
