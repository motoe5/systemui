.class final enum Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;
.super Ljava/lang/Enum;
.source "ModBatteryTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ModBatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SuppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

.field public static final enum Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

.field public static final enum ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

.field public static final enum ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

.field public static final enum Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

.field public static final enum Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    const-string/jumbo v1, "Attaching"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    .line 180
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    const-string/jumbo v1, "Detaching"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    .line 181
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    const-string/jumbo v1, "Toggling"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    .line 182
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    const-string/jumbo v1, "ChargeEnabling"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    .line 183
    new-instance v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    const-string/jumbo v1, "ChargeDisabling"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Attaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Detaching:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->Toggling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeEnabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->ChargeDisabling:Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->$VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;->$VALUES:[Lcom/android/systemui/qs/tiles/ModBatteryTile$SuppState;

    return-object v0
.end method
