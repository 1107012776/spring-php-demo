<?php

namespace App\Model;


use App\Config\ShardingInitConfig;


use PhpShardingPdo\Components\SoftDeleteTrait;
use PhpShardingPdo\Core\Model;

Class ServerManagerModel extends Model
{
    use SoftDeleteTrait;
    protected $tableName = 'server_manager';
    protected $tableNameIndexConfig = [];
    protected $shardingInitConfigClass = ShardingInitConfig::class;
}