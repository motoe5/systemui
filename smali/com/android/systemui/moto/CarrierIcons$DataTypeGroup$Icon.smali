.class Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Icon"
.end annotation


# instance fields
.field private active:I

.field private disable:I

.field private suspend:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .prologue
    iget v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->active:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .prologue
    iget v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->disable:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .prologue
    iget v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->suspend:I

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->active:I

    .line 172
    iput v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->suspend:I

    .line 173
    iput v0, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->disable:I

    .line 174
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "active"    # I
    .param p2, "suspend"    # I
    .param p3, "disable"    # I

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->active:I

    .line 178
    iput p2, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->suspend:I

    .line 179
    iput p3, p0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;->disable:I

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup$Icon;-><init>()V

    return-void
.end method
