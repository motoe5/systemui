.class public Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;
.super Ljava/lang/Object;
.source "CarrierIcons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalStrengthIcon"
.end annotation


# static fields
.field private static QS_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QS_STRENGTH_4_BARS_SEPARATED:[[I

.field public static final QS_STRENGTH_5_BARS_SEPARATED:[[I

.field private static SB_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRENGTH_4_BARS_SEPARATED:[[I

.field public static final STRENGTH_5_BARS_SEPARATED:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 329
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->SB_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    .line 331
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->SB_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    const v1, 0x7f080453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->SB_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    const v1, 0x7f080454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    .line 337
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    const v1, 0x7f0803ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    const v1, 0x7f0803ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 342
    new-array v0, v6, [[I

    .line 344
    const v1, 0x7f08043d

    .line 345
    const v2, 0x7f080441

    .line 346
    const v3, 0x7f080445

    .line 347
    const v4, 0x7f080449

    .line 348
    const v5, 0x7f08044d

    .line 343
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 350
    const v1, 0x7f08043c

    .line 351
    const v2, 0x7f080440

    .line 352
    const v3, 0x7f080444

    .line 353
    const v4, 0x7f080448

    .line 354
    const v5, 0x7f08044c

    .line 349
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 342
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->STRENGTH_4_BARS_SEPARATED:[[I

    .line 357
    new-array v0, v6, [[I

    .line 358
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    .line 366
    new-array v1, v9, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    .line 357
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->STRENGTH_5_BARS_SEPARATED:[[I

    .line 375
    new-array v0, v6, [[I

    .line 377
    const v1, 0x7f080376

    .line 378
    const v2, 0x7f08037a

    .line 379
    const v3, 0x7f08037f

    .line 380
    const v4, 0x7f080384

    .line 381
    const v5, 0x7f08038a

    .line 376
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 383
    const v1, 0x7f080375

    .line 384
    const v2, 0x7f080379

    .line 385
    const v3, 0x7f08037e

    .line 386
    const v4, 0x7f080383

    .line 387
    const v5, 0x7f080389

    .line 382
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 375
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_STRENGTH_4_BARS_SEPARATED:[[I

    .line 389
    new-array v0, v6, [[I

    .line 390
    new-array v1, v9, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    .line 398
    new-array v1, v9, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    .line 389
    sput-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_STRENGTH_5_BARS_SEPARATED:[[I

    .line 325
    return-void

    .line 358
    :array_0
    .array-data 4
        0x7f08043f
        0x7f080443
        0x7f080447
        0x7f08044b
        0x7f08044f
        0x7f080451
    .end array-data

    .line 366
    :array_1
    .array-data 4
        0x7f08043e
        0x7f080442
        0x7f080446
        0x7f08044a
        0x7f08044e
        0x7f080450
    .end array-data

    .line 390
    :array_2
    .array-data 4
        0x7f080378
        0x7f08037c
        0x7f080381
        0x7f080386
        0x7f08038c
        0x7f080391
    .end array-data

    .line 398
    :array_3
    .array-data 4
        0x7f080377
        0x7f08037b
        0x7f080380
        0x7f080385
        0x7f08038b
        0x7f080390
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentIconId(ZZIIZ)I
    .locals 1
    .param p0, "isStatusBar"    # Z
    .param p1, "connected"    # Z
    .param p2, "maxLevel"    # I
    .param p3, "level"    # I
    .param p4, "fullyConnected"    # Z

    .prologue
    .line 460
    const/4 p4, 0x1

    .line 462
    .local p4, "fullyConnected":Z
    if-eqz p0, :cond_1

    .line 463
    if-eqz p1, :cond_0

    .line 464
    invoke-static {p2, p3, p4}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->sbSignalStrength(IIZ)I

    move-result v0

    return v0

    .line 466
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->sbNoSignal(I)I

    move-result v0

    return v0

    .line 469
    :cond_1
    if-eqz p1, :cond_2

    .line 470
    invoke-static {p2, p3, p4}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->qsSignalStrength(IIZ)I

    move-result v0

    return v0

    .line 472
    :cond_2
    invoke-static {p2}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->qsNoSignal(I)I

    move-result v0

    return v0
.end method

.method public static qsNoSignal(I)I
    .locals 1
    .param p0, "maxLevel"    # I

    .prologue
    .line 436
    invoke-static {p0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->verifyMaxLevel(I)I

    move-result p0

    .line 437
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static qsSignalStrength(IIZ)I
    .locals 2
    .param p0, "maxLevel"    # I
    .param p1, "level"    # I
    .param p2, "fullyConnected"    # Z

    .prologue
    .line 422
    invoke-static {p0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->verifyMaxLevel(I)I

    move-result p0

    .line 423
    if-le p1, p0, :cond_0

    .line 424
    move p1, p0

    .line 426
    :cond_0
    const/4 v0, 0x0

    .line 427
    .local v0, "fullyIndex":I
    if-eqz p2, :cond_1

    .line 428
    const/4 v0, 0x1

    .line 430
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_STRENGTH_5_BARS_SEPARATED:[[I

    aget-object v1, v1, v0

    aget v1, v1, p1

    :goto_0
    return v1

    .line 431
    :cond_2
    sget-object v1, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->QS_STRENGTH_4_BARS_SEPARATED:[[I

    aget-object v1, v1, v0

    aget v1, v1, p1

    goto :goto_0
.end method

.method public static sbNoSignal(I)I
    .locals 1
    .param p0, "maxLevel"    # I

    .prologue
    .line 441
    invoke-static {p0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->verifyMaxLevel(I)I

    move-result p0

    .line 442
    sget-object v0, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->SB_NO_SIGNAL_BARS_SEPARATED:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static sbSignalStrength(IIZ)I
    .locals 2
    .param p0, "maxLevel"    # I
    .param p1, "level"    # I
    .param p2, "fullyConnected"    # Z

    .prologue
    .line 409
    invoke-static {p0}, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->verifyMaxLevel(I)I

    move-result p0

    .line 410
    if-le p1, p0, :cond_0

    .line 411
    move p1, p0

    .line 413
    :cond_0
    const/4 v0, 0x0

    .line 414
    .local v0, "fullyIndex":I
    if-eqz p2, :cond_1

    .line 415
    const/4 v0, 0x1

    .line 417
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->STRENGTH_5_BARS_SEPARATED:[[I

    aget-object v1, v1, v0

    aget v1, v1, p1

    :goto_0
    return v1

    .line 418
    :cond_2
    sget-object v1, Lcom/android/systemui/moto/CarrierIcons$SignalStrengthIcon;->STRENGTH_4_BARS_SEPARATED:[[I

    aget-object v1, v1, v0

    aget v1, v1, p1

    goto :goto_0
.end method

.method private static verifyMaxLevel(I)I
    .locals 2
    .param p0, "maxLevel"    # I

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    .line 446
    if-le p0, v1, :cond_0

    .line 447
    return v1

    .line 448
    :cond_0
    if-ge p0, v0, :cond_1

    .line 449
    return v0

    .line 451
    :cond_1
    return p0
.end method
